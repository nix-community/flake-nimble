{
  description = ''alignment is a library to align strings.'';
  inputs.src-alignment-1_1_0.flake = false;
  inputs.src-alignment-1_1_0.type = "github";
  inputs.src-alignment-1_1_0.owner = "jiro4989";
  inputs.src-alignment-1_1_0.repo = "alignment";
  inputs.src-alignment-1_1_0.ref = "refs/tags/1.1.0";
  
  
  inputs."eastasianwidth".url = "path:../../../e/eastasianwidth";
  inputs."eastasianwidth".type = "github";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".repo = "flake-nimble";
  inputs."eastasianwidth".ref = "flake-pinning";
  inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";

  outputs = { self, nixpkgs, src-alignment-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alignment-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-alignment-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}