{
  description = ''terminal ascii tables for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."asciitables-master".type = "github";
  inputs."asciitables-master".owner = "riinr";
  inputs."asciitables-master".repo = "flake-nimble";
  inputs."asciitables-master".ref = "flake-pinning";
  inputs."asciitables-master".dir = "nimpkgs/a/asciitables/master";
  inputs."asciitables-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asciitables-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}