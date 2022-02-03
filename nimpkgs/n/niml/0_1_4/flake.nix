{
  description = ''html dsl'';
  inputs.src-niml-0_1_4.flake = false;
  inputs.src-niml-0_1_4.type = "github";
  inputs.src-niml-0_1_4.owner = "jakubDoka";
  inputs.src-niml-0_1_4.repo = "niml";
  inputs.src-niml-0_1_4.ref = "refs/tags/0.1.4";
  
  
  inputs."fusion".url = "path:../../../f/fusion";
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  outputs = { self, nixpkgs, src-niml-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niml-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niml-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}