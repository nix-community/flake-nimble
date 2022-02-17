{
  description = ''alignment is a library to align strings.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-alignment-v1_2_1.flake = false;
  inputs.src-alignment-v1_2_1.type = "github";
  inputs.src-alignment-v1_2_1.owner = "jiro4989";
  inputs.src-alignment-v1_2_1.repo = "alignment";
  inputs.src-alignment-v1_2_1.ref = "refs/tags/v1.2.1";
  
  
  inputs."eastasianwidth".type = "github";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".repo = "flake-nimble";
  inputs."eastasianwidth".ref = "flake-pinning";
  inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";

  outputs = { self, nixpkgs, flakeNimbleLib, src-alignment-v1_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alignment-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-alignment-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}