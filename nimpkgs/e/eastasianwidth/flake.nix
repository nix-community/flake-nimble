{
  description = ''eastasianwidth is library for EastAsianWidth.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."eastasianwidth-master".type = "github";
  inputs."eastasianwidth-master".owner = "riinr";
  inputs."eastasianwidth-master".repo = "flake-nimble";
  inputs."eastasianwidth-master".ref = "flake-pinning";
  inputs."eastasianwidth-master".dir = "nimpkgs/e/eastasianwidth/master";

    inputs."eastasianwidth-1_1_0".type = "github";
  inputs."eastasianwidth-1_1_0".owner = "riinr";
  inputs."eastasianwidth-1_1_0".repo = "flake-nimble";
  inputs."eastasianwidth-1_1_0".ref = "flake-pinning";
  inputs."eastasianwidth-1_1_0".dir = "nimpkgs/e/eastasianwidth/1_1_0";

    inputs."eastasianwidth-v0_1_0".type = "github";
  inputs."eastasianwidth-v0_1_0".owner = "riinr";
  inputs."eastasianwidth-v0_1_0".repo = "flake-nimble";
  inputs."eastasianwidth-v0_1_0".ref = "flake-pinning";
  inputs."eastasianwidth-v0_1_0".dir = "nimpkgs/e/eastasianwidth/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}