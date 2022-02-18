{
  description = ''Google API for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."googleapi-master".type = "github";
  inputs."googleapi-master".owner = "riinr";
  inputs."googleapi-master".repo = "flake-nimble";
  inputs."googleapi-master".ref = "flake-pinning";
  inputs."googleapi-master".dir = "nimpkgs/g/googleapi/master";

    inputs."googleapi-0_1_0".type = "github";
  inputs."googleapi-0_1_0".owner = "riinr";
  inputs."googleapi-0_1_0".repo = "flake-nimble";
  inputs."googleapi-0_1_0".ref = "flake-pinning";
  inputs."googleapi-0_1_0".dir = "nimpkgs/g/googleapi/0_1_0";

    inputs."googleapi-0_1_1".type = "github";
  inputs."googleapi-0_1_1".owner = "riinr";
  inputs."googleapi-0_1_1".repo = "flake-nimble";
  inputs."googleapi-0_1_1".ref = "flake-pinning";
  inputs."googleapi-0_1_1".dir = "nimpkgs/g/googleapi/0_1_1";

    inputs."googleapi-0_1_2".type = "github";
  inputs."googleapi-0_1_2".owner = "riinr";
  inputs."googleapi-0_1_2".repo = "flake-nimble";
  inputs."googleapi-0_1_2".ref = "flake-pinning";
  inputs."googleapi-0_1_2".dir = "nimpkgs/g/googleapi/0_1_2";

    inputs."googleapi-0_1_3".type = "github";
  inputs."googleapi-0_1_3".owner = "riinr";
  inputs."googleapi-0_1_3".repo = "flake-nimble";
  inputs."googleapi-0_1_3".ref = "flake-pinning";
  inputs."googleapi-0_1_3".dir = "nimpkgs/g/googleapi/0_1_3";

    inputs."googleapi-0_1_4".type = "github";
  inputs."googleapi-0_1_4".owner = "riinr";
  inputs."googleapi-0_1_4".repo = "flake-nimble";
  inputs."googleapi-0_1_4".ref = "flake-pinning";
  inputs."googleapi-0_1_4".dir = "nimpkgs/g/googleapi/0_1_4";

    inputs."googleapi-v0_1_0".type = "github";
  inputs."googleapi-v0_1_0".owner = "riinr";
  inputs."googleapi-v0_1_0".repo = "flake-nimble";
  inputs."googleapi-v0_1_0".ref = "flake-pinning";
  inputs."googleapi-v0_1_0".dir = "nimpkgs/g/googleapi/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}