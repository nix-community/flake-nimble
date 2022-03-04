{
  description = ''Nim library for implementing JSON-RPC clients and servers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-json_rpc-master.flake = false;
  inputs.src-json_rpc-master.type = "github";
  inputs.src-json_rpc-master.owner = "status-im";
  inputs.src-json_rpc-master.repo = "nim-json-rpc";
  inputs.src-json_rpc-master.ref = "refs/heads/master";
  inputs.src-json_rpc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."httputils".type = "github";
  inputs."httputils".owner = "riinr";
  inputs."httputils".repo = "flake-nimble";
  inputs."httputils".ref = "flake-pinning";
  inputs."httputils".dir = "nimpkgs/h/httputils";
  inputs."httputils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httputils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/status-im/news".type = "github";
  inputs."https://github.com/status-im/news".owner = "riinr";
  inputs."https://github.com/status-im/news".repo = "flake-nimble";
  inputs."https://github.com/status-im/news".ref = "flake-pinning";
  inputs."https://github.com/status-im/news".dir = "nimpkgs/h/https://github.com/status-im/news";
  inputs."https://github.com/status-im/news".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/news".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."websock".type = "github";
  inputs."websock".owner = "riinr";
  inputs."websock".repo = "flake-nimble";
  inputs."websock".ref = "flake-pinning";
  inputs."websock".dir = "nimpkgs/w/websock";
  inputs."websock".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websock".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."json_serialization".type = "github";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".repo = "flake-nimble";
  inputs."json_serialization".ref = "flake-pinning";
  inputs."json_serialization".dir = "nimpkgs/j/json_serialization";
  inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-json_rpc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-json_rpc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-json_rpc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}