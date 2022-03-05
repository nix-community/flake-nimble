{
  description = ''A rudimentary Nim REPL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nrpl-master".type = "github";
  inputs."nrpl-master".owner = "riinr";
  inputs."nrpl-master".repo = "flake-nimble";
  inputs."nrpl-master".ref = "flake-pinning";
  inputs."nrpl-master".dir = "nimpkgs/n/nrpl/master";
  inputs."nrpl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nrpl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}