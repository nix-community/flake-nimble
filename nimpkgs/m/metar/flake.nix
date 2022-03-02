{
  description = ''Read metadata from jpeg and tiff images.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."metar-master".type = "github";
  inputs."metar-master".owner = "riinr";
  inputs."metar-master".repo = "flake-nimble";
  inputs."metar-master".ref = "flake-pinning";
  inputs."metar-master".dir = "nimpkgs/m/metar/master";
  inputs."metar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."metar-v0_1_23".type = "github";
  inputs."metar-v0_1_23".owner = "riinr";
  inputs."metar-v0_1_23".repo = "flake-nimble";
  inputs."metar-v0_1_23".ref = "flake-pinning";
  inputs."metar-v0_1_23".dir = "nimpkgs/m/metar/v0_1_23";
  inputs."metar-v0_1_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metar-v0_1_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."metar-v0_1_25".type = "github";
  inputs."metar-v0_1_25".owner = "riinr";
  inputs."metar-v0_1_25".repo = "flake-nimble";
  inputs."metar-v0_1_25".ref = "flake-pinning";
  inputs."metar-v0_1_25".dir = "nimpkgs/m/metar/v0_1_25";
  inputs."metar-v0_1_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metar-v0_1_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}