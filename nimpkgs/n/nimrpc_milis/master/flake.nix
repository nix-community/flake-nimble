{
  description = ''RPC implementation for Nim based on msgpack4nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimrpc_milis-master.flake = false;
  inputs.src-nimrpc_milis-master.type = "github";
  inputs.src-nimrpc_milis-master.owner = "milisarge";
  inputs.src-nimrpc_milis-master.repo = "nimrpc_milis";
  inputs.src-nimrpc_milis-master.ref = "refs/heads/master";
  
  
  inputs."msgpack4nim".type = "github";
  inputs."msgpack4nim".owner = "riinr";
  inputs."msgpack4nim".repo = "flake-nimble";
  inputs."msgpack4nim".ref = "flake-pinning";
  inputs."msgpack4nim".dir = "nimpkgs/m/msgpack4nim";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimrpc_milis-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrpc_milis-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimrpc_milis-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}