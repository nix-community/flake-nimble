{
  description = ''rect is a command to crop/paste rectangle text.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rect-v1_0_1.flake = false;
  inputs.src-rect-v1_0_1.type = "github";
  inputs.src-rect-v1_0_1.owner = "jiro4989";
  inputs.src-rect-v1_0_1.repo = "rect";
  inputs.src-rect-v1_0_1.ref = "refs/tags/v1.0.1";
  
  
  inputs."eastasianwidth".type = "github";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".repo = "flake-nimble";
  inputs."eastasianwidth".ref = "flake-pinning";
  inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rect-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rect-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rect-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}