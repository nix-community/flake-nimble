{
  description = ''alignment is a library to align strings.'';
  inputs.src-alignment-v1_1_2.flake = false;
  inputs.src-alignment-v1_1_2.type = "github";
  inputs.src-alignment-v1_1_2.owner = "jiro4989";
  inputs.src-alignment-v1_1_2.repo = "alignment";
  inputs.src-alignment-v1_1_2.ref = "refs/tags/v1.1.2";
  
  
  inputs."eastasianwidth".type = "github";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".repo = "flake-nimble";
  inputs."eastasianwidth".ref = "flake-pinning";
  inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";

  outputs = { self, nixpkgs, src-alignment-v1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alignment-v1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-alignment-v1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}