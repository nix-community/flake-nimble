{
  description = ''Prints a dot graph of a nim ast dumped using the `dumpTree` macro.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."astdot-main".type = "github";
  inputs."astdot-main".owner = "riinr";
  inputs."astdot-main".repo = "flake-nimble";
  inputs."astdot-main".ref = "flake-pinning";
  inputs."astdot-main".dir = "nimpkgs/a/astdot/main";
  inputs."astdot-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."astdot-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}