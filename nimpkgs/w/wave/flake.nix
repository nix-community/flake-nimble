{
  description = ''wave is a tiny WAV sound module'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wave-develop".type = "github";
  inputs."wave-develop".owner = "riinr";
  inputs."wave-develop".repo = "flake-nimble";
  inputs."wave-develop".ref = "flake-pinning";
  inputs."wave-develop".dir = "nimpkgs/w/wave/develop";
  inputs."wave-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wave-master".type = "github";
  inputs."wave-master".owner = "riinr";
  inputs."wave-master".repo = "flake-nimble";
  inputs."wave-master".ref = "flake-pinning";
  inputs."wave-master".dir = "nimpkgs/w/wave/master";
  inputs."wave-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wave-v1_0_0".type = "github";
  inputs."wave-v1_0_0".owner = "riinr";
  inputs."wave-v1_0_0".repo = "flake-nimble";
  inputs."wave-v1_0_0".ref = "flake-pinning";
  inputs."wave-v1_0_0".dir = "nimpkgs/w/wave/v1_0_0";
  inputs."wave-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wave-v1_1_0".type = "github";
  inputs."wave-v1_1_0".owner = "riinr";
  inputs."wave-v1_1_0".repo = "flake-nimble";
  inputs."wave-v1_1_0".ref = "flake-pinning";
  inputs."wave-v1_1_0".dir = "nimpkgs/w/wave/v1_1_0";
  inputs."wave-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}