{
  description = ''alignment is a library to align strings.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-alignment-v1_2_0.flake = false;
  inputs.src-alignment-v1_2_0.type = "github";
  inputs.src-alignment-v1_2_0.owner = "jiro4989";
  inputs.src-alignment-v1_2_0.repo = "alignment";
  inputs.src-alignment-v1_2_0.ref = "refs/tags/v1.2.0";
  
  
  inputs."eastasianwidth".type = "github";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".repo = "flake-nimble";
  inputs."eastasianwidth".ref = "flake-pinning";
  inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";

  outputs = { self, nixpkgs, flakeNimbleLib, src-alignment-v1_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alignment-v1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-alignment-v1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}