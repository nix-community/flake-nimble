{
  description = ''A wrapper of the ORX 2.5D game engine'';
  inputs.src-norx-0_4_3.flake = false;
  inputs.src-norx-0_4_3.type = "github";
  inputs.src-norx-0_4_3.owner = "gokr";
  inputs.src-norx-0_4_3.repo = "norx";
  inputs.src-norx-0_4_3.ref = "refs/tags/0.4.3";
  
  
  inputs."https://github.com/yglukhov/android".url = "path:../../../h/https://github.com/yglukhov/android";
  inputs."https://github.com/yglukhov/android".type = "github";
  inputs."https://github.com/yglukhov/android".owner = "riinr";
  inputs."https://github.com/yglukhov/android".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/android".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/android".dir = "nimpkgs/h/https://github.com/yglukhov/android";

  outputs = { self, nixpkgs, src-norx-0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norx-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norx-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}