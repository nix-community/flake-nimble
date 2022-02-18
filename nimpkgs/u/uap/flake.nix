{
  description = ''Nim implementation of user-agent parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."uap-master".type = "github";
  inputs."uap-master".owner = "riinr";
  inputs."uap-master".repo = "flake-nimble";
  inputs."uap-master".ref = "flake-pinning";
  inputs."uap-master".dir = "nimpkgs/u/uap/master";

    inputs."uap-v1_0_0".type = "github";
  inputs."uap-v1_0_0".owner = "riinr";
  inputs."uap-v1_0_0".repo = "flake-nimble";
  inputs."uap-v1_0_0".ref = "flake-pinning";
  inputs."uap-v1_0_0".dir = "nimpkgs/u/uap/v1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}