{
  description = ''Color Library'';
  inputs.src-Palette-0_2_0.flake = false;
  inputs.src-Palette-0_2_0.type = "github";
  inputs.src-Palette-0_2_0.owner = "momeemt";
  inputs.src-Palette-0_2_0.repo = "Palette";
  inputs.src-Palette-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-Palette-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Palette-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Palette-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}