{
  description = ''Random password and passphrase generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."randpw-master".type = "github";
  inputs."randpw-master".owner = "riinr";
  inputs."randpw-master".repo = "flake-nimble";
  inputs."randpw-master".ref = "flake-pinning";
  inputs."randpw-master".dir = "nimpkgs/r/randpw/master";

    inputs."randpw-v1_0_0".type = "github";
  inputs."randpw-v1_0_0".owner = "riinr";
  inputs."randpw-v1_0_0".repo = "flake-nimble";
  inputs."randpw-v1_0_0".ref = "flake-pinning";
  inputs."randpw-v1_0_0".dir = "nimpkgs/r/randpw/v1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}