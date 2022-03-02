{
  description = ''RPC implementation for Nim based on msgpack4nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimrpc-master.flake = false;
  inputs.src-nimrpc-master.type = "github";
  inputs.src-nimrpc-master.owner = "rogercloud";
  inputs.src-nimrpc-master.repo = "nim-rpc";
  inputs.src-nimrpc-master.ref = "refs/heads/master";
  inputs.src-nimrpc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."msgpack4nim".type = "github";
  # inputs."msgpack4nim".owner = "riinr";
  # inputs."msgpack4nim".repo = "flake-nimble";
  # inputs."msgpack4nim".ref = "flake-pinning";
  # inputs."msgpack4nim".dir = "nimpkgs/m/msgpack4nim";
  # inputs."msgpack4nim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."msgpack4nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimrpc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrpc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimrpc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}