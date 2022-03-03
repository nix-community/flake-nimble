{
  description = ''A fast and simple command line argument parser inspired by Python's argparse.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."clapfn-master".type = "github";
  inputs."clapfn-master".owner = "riinr";
  inputs."clapfn-master".repo = "flake-nimble";
  inputs."clapfn-master".ref = "flake-pinning";
  inputs."clapfn-master".dir = "nimpkgs/c/clapfn/master";
  inputs."clapfn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clapfn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}