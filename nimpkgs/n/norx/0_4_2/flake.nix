{
  description = ''A wrapper of the ORX 2.5D game engine'';
  inputs.src-norx-0_4_2.flake = false;
  inputs.src-norx-0_4_2.type = "github";
  inputs.src-norx-0_4_2.owner = "gokr";
  inputs.src-norx-0_4_2.repo = "norx";
  inputs.src-norx-0_4_2.ref = "refs/tags/0.4.2";
  
  outputs = { self, nixpkgs, src-norx-0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norx-0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norx-0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}