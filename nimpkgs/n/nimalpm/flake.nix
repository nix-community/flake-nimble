{
  description = ''A nimrod wrapper for libalpm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimalpm-master".type = "github";
  inputs."nimalpm-master".owner = "riinr";
  inputs."nimalpm-master".repo = "flake-nimble";
  inputs."nimalpm-master".ref = "flake-pinning";
  inputs."nimalpm-master".dir = "nimpkgs/n/nimalpm/master";
  inputs."nimalpm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimalpm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}