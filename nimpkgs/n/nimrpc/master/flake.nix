{
  description = ''RPC implementation for Nim based on msgpack4nim'';
  inputs.src-nimrpc-master.flake = false;
  inputs.src-nimrpc-master.type = "github";
  inputs.src-nimrpc-master.owner = "rogercloud";
  inputs.src-nimrpc-master.repo = "nim-rpc";
  inputs.src-nimrpc-master.ref = "refs/heads/master";
  
  
  inputs."msgpack4nim".type = "github";
  inputs."msgpack4nim".owner = "riinr";
  inputs."msgpack4nim".repo = "flake-nimble";
  inputs."msgpack4nim".ref = "flake-pinning";
  inputs."msgpack4nim".dir = "nimpkgs/m/msgpack4nim";

  outputs = { self, nixpkgs, src-nimrpc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrpc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimrpc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}