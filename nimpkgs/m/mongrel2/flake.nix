{
  description = ''Handler framework for the Mongrel2 web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mongrel2-master".type = "github";
  inputs."mongrel2-master".owner = "riinr";
  inputs."mongrel2-master".repo = "flake-nimble";
  inputs."mongrel2-master".ref = "flake-pinning";
  inputs."mongrel2-master".dir = "nimpkgs/m/mongrel2/master";
  inputs."mongrel2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mongrel2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}