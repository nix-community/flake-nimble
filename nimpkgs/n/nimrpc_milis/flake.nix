{
  description = ''RPC implementation for Nim based on msgpack4nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimrpc_milis-master".type = "github";
  inputs."nimrpc_milis-master".owner = "riinr";
  inputs."nimrpc_milis-master".repo = "flake-nimble";
  inputs."nimrpc_milis-master".ref = "flake-pinning";
  inputs."nimrpc_milis-master".dir = "nimpkgs/n/nimrpc_milis/master";
  inputs."nimrpc_milis-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrpc_milis-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}