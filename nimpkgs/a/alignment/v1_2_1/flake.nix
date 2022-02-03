{
  description = ''alignment is a library to align strings.'';
  inputs.src-alignment-v1_2_1.flake = false;
  inputs.src-alignment-v1_2_1.type = "github";
  inputs.src-alignment-v1_2_1.owner = "jiro4989";
  inputs.src-alignment-v1_2_1.repo = "alignment";
  inputs.src-alignment-v1_2_1.ref = "refs/tags/v1.2.1";
  
  
  inputs."eastasianwidth".url = "path:../../../e/eastasianwidth";
  inputs."eastasianwidth".type = "github";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".repo = "flake-nimble";
  inputs."eastasianwidth".ref = "flake-pinning";
  inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";

  outputs = { self, nixpkgs, src-alignment-v1_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alignment-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-alignment-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}