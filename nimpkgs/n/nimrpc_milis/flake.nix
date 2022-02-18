{
  description = ''RPC implementation for Nim based on msgpack4nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimrpc_milis-master".type = "github";
  inputs."nimrpc_milis-master".owner = "riinr";
  inputs."nimrpc_milis-master".repo = "flake-nimble";
  inputs."nimrpc_milis-master".ref = "flake-pinning";
  inputs."nimrpc_milis-master".dir = "nimpkgs/n/nimrpc_milis/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}