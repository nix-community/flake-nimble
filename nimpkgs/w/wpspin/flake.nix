{
  description = ''Full-featured WPS PIN generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."wpspin-master".type = "github";
  inputs."wpspin-master".owner = "riinr";
  inputs."wpspin-master".repo = "flake-nimble";
  inputs."wpspin-master".ref = "flake-pinning";
  inputs."wpspin-master".dir = "nimpkgs/w/wpspin/master";

    inputs."wpspin-0_3_0".type = "github";
  inputs."wpspin-0_3_0".owner = "riinr";
  inputs."wpspin-0_3_0".repo = "flake-nimble";
  inputs."wpspin-0_3_0".ref = "flake-pinning";
  inputs."wpspin-0_3_0".dir = "nimpkgs/w/wpspin/0_3_0";

    inputs."wpspin-0_5_0".type = "github";
  inputs."wpspin-0_5_0".owner = "riinr";
  inputs."wpspin-0_5_0".repo = "flake-nimble";
  inputs."wpspin-0_5_0".ref = "flake-pinning";
  inputs."wpspin-0_5_0".dir = "nimpkgs/w/wpspin/0_5_0";

    inputs."wpspin-0_5_1".type = "github";
  inputs."wpspin-0_5_1".owner = "riinr";
  inputs."wpspin-0_5_1".repo = "flake-nimble";
  inputs."wpspin-0_5_1".ref = "flake-pinning";
  inputs."wpspin-0_5_1".dir = "nimpkgs/w/wpspin/0_5_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}