{
  description = ''Cryptographic signing for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gungnir-master".type = "github";
  inputs."gungnir-master".owner = "riinr";
  inputs."gungnir-master".repo = "flake-nimble";
  inputs."gungnir-master".ref = "flake-pinning";
  inputs."gungnir-master".dir = "nimpkgs/g/gungnir/master";
  inputs."gungnir-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gungnir-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gungnir-v0_1_0".type = "github";
  inputs."gungnir-v0_1_0".owner = "riinr";
  inputs."gungnir-v0_1_0".repo = "flake-nimble";
  inputs."gungnir-v0_1_0".ref = "flake-pinning";
  inputs."gungnir-v0_1_0".dir = "nimpkgs/g/gungnir/v0_1_0";
  inputs."gungnir-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gungnir-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}