{
  description = ''A simple and lightweight terminal coloring library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."colorize-master".type = "github";
  inputs."colorize-master".owner = "riinr";
  inputs."colorize-master".repo = "flake-nimble";
  inputs."colorize-master".ref = "flake-pinning";
  inputs."colorize-master".dir = "nimpkgs/c/colorize/master";
  inputs."colorize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}