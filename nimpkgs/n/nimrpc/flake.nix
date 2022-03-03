{
  description = ''RPC implementation for Nim based on msgpack4nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimrpc-master".type = "github";
  inputs."nimrpc-master".owner = "riinr";
  inputs."nimrpc-master".repo = "flake-nimble";
  inputs."nimrpc-master".ref = "flake-pinning";
  inputs."nimrpc-master".dir = "nimpkgs/n/nimrpc/master";
  inputs."nimrpc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrpc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}