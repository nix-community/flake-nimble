{
  description = ''Nim implementation of user-agent parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."uap-master".type = "github";
  inputs."uap-master".owner = "riinr";
  inputs."uap-master".repo = "flake-nimble";
  inputs."uap-master".ref = "flake-pinning";
  inputs."uap-master".dir = "nimpkgs/u/uap/master";
  inputs."uap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."uap-v1_0_0".type = "github";
  inputs."uap-v1_0_0".owner = "riinr";
  inputs."uap-v1_0_0".repo = "flake-nimble";
  inputs."uap-v1_0_0".ref = "flake-pinning";
  inputs."uap-v1_0_0".dir = "nimpkgs/u/uap/v1_0_0";
  inputs."uap-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}