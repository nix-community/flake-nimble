{
  description = ''Wrapper to interface with Python interpreter'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."python-master".type = "github";
  inputs."python-master".owner = "riinr";
  inputs."python-master".repo = "flake-nimble";
  inputs."python-master".ref = "flake-pinning";
  inputs."python-master".dir = "nimpkgs/p/python/master";
  inputs."python-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."python-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}