{
  description = ''Library for async programming and communication. This Library uses a future/promise, non-blocking I/O model based on libuv.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."node-master".type = "github";
  inputs."node-master".owner = "riinr";
  inputs."node-master".repo = "flake-nimble";
  inputs."node-master".ref = "flake-pinning";
  inputs."node-master".dir = "nimpkgs/n/node/master";
  inputs."node-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."node-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}