{
  description = ''nim wrapper around the AntTweakBar c library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."AntTweakBar-master".type = "github";
  inputs."AntTweakBar-master".owner = "riinr";
  inputs."AntTweakBar-master".repo = "flake-nimble";
  inputs."AntTweakBar-master".ref = "flake-pinning";
  inputs."AntTweakBar-master".dir = "nimpkgs/a/AntTweakBar/master";

    inputs."AntTweakBar-v1_0_2".type = "github";
  inputs."AntTweakBar-v1_0_2".owner = "riinr";
  inputs."AntTweakBar-v1_0_2".repo = "flake-nimble";
  inputs."AntTweakBar-v1_0_2".ref = "flake-pinning";
  inputs."AntTweakBar-v1_0_2".dir = "nimpkgs/a/AntTweakBar/v1_0_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}