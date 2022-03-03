{
  description = ''Wrapper to interface with the Python 3 interpreter'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."python3-master".type = "github";
  inputs."python3-master".owner = "riinr";
  inputs."python3-master".repo = "flake-nimble";
  inputs."python3-master".ref = "flake-pinning";
  inputs."python3-master".dir = "nimpkgs/p/python3/master";
  inputs."python3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."python3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}