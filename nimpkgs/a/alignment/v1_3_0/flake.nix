{
  description = ''alignment is a library to align strings.'';
  inputs.src-alignment-v1_3_0.flake = false;
  inputs.src-alignment-v1_3_0.type = "github";
  inputs.src-alignment-v1_3_0.owner = "jiro4989";
  inputs.src-alignment-v1_3_0.repo = "alignment";
  inputs.src-alignment-v1_3_0.ref = "refs/tags/v1.3.0";
  
  
  inputs."eastasianwidth".url = "path:../../../e/eastasianwidth";
  inputs."eastasianwidth".type = "github";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".repo = "flake-nimble";
  inputs."eastasianwidth".ref = "flake-pinning";
  inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";

  outputs = { self, nixpkgs, src-alignment-v1_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alignment-v1_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-alignment-v1_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}