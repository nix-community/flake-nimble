{
  description = ''Base45 encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
    inputs."base45-0_1_0".type = "github";
  inputs."base45-0_1_0".owner = "riinr";
  inputs."base45-0_1_0".repo = "flake-nimble";
  inputs."base45-0_1_0".ref = "flake-pinning";
  inputs."base45-0_1_0".dir = "nimpkgs/b/base45/0_1_0";
  inputs."base45-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base45-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."base45-1_0_0".type = "github";
  inputs."base45-1_0_0".owner = "riinr";
  inputs."base45-1_0_0".repo = "flake-nimble";
  inputs."base45-1_0_0".ref = "flake-pinning";
  inputs."base45-1_0_0".dir = "nimpkgs/b/base45/1_0_0";
  inputs."base45-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base45-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}