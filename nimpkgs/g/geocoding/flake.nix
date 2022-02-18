{
  description = ''A simple library for Google Maps Geocoding API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."geocoding-master".type = "github";
  inputs."geocoding-master".owner = "riinr";
  inputs."geocoding-master".repo = "flake-nimble";
  inputs."geocoding-master".ref = "flake-pinning";
  inputs."geocoding-master".dir = "nimpkgs/g/geocoding/master";

    inputs."geocoding-v0_1_0".type = "github";
  inputs."geocoding-v0_1_0".owner = "riinr";
  inputs."geocoding-v0_1_0".repo = "flake-nimble";
  inputs."geocoding-v0_1_0".ref = "flake-pinning";
  inputs."geocoding-v0_1_0".dir = "nimpkgs/g/geocoding/v0_1_0";

    inputs."geocoding-v0_1_1".type = "github";
  inputs."geocoding-v0_1_1".owner = "riinr";
  inputs."geocoding-v0_1_1".repo = "flake-nimble";
  inputs."geocoding-v0_1_1".ref = "flake-pinning";
  inputs."geocoding-v0_1_1".dir = "nimpkgs/g/geocoding/v0_1_1";

    inputs."geocoding-v0_1_2".type = "github";
  inputs."geocoding-v0_1_2".owner = "riinr";
  inputs."geocoding-v0_1_2".repo = "flake-nimble";
  inputs."geocoding-v0_1_2".ref = "flake-pinning";
  inputs."geocoding-v0_1_2".dir = "nimpkgs/g/geocoding/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}