{
  description = ''An efficient library for asynchronous programming'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."chronos-master".type = "github";
  inputs."chronos-master".owner = "riinr";
  inputs."chronos-master".repo = "flake-nimble";
  inputs."chronos-master".ref = "flake-pinning";
  inputs."chronos-master".dir = "nimpkgs/c/chronos/master";
  inputs."chronos-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}