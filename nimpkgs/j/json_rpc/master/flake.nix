{
  description = ''Nim library for implementing JSON-RPC clients and servers'';
  inputs.src-json_rpc-master.flake = false;
  inputs.src-json_rpc-master.type = "github";
  inputs.src-json_rpc-master.owner = "status-im";
  inputs.src-json_rpc-master.repo = "nim-json-rpc";
  inputs.src-json_rpc-master.ref = "refs/heads/master";
  
  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  
  inputs."httputils".type = "github";
  inputs."httputils".owner = "riinr";
  inputs."httputils".repo = "flake-nimble";
  inputs."httputils".ref = "flake-pinning";
  inputs."httputils".dir = "nimpkgs/h/httputils";

  
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";

  
  inputs."https://github.com/status-im/news".type = "github";
  inputs."https://github.com/status-im/news".owner = "riinr";
  inputs."https://github.com/status-im/news".repo = "flake-nimble";
  inputs."https://github.com/status-im/news".ref = "flake-pinning";
  inputs."https://github.com/status-im/news".dir = "nimpkgs/h/https://github.com/status-im/news";

  
  inputs."websock".type = "github";
  inputs."websock".owner = "riinr";
  inputs."websock".repo = "flake-nimble";
  inputs."websock".ref = "flake-pinning";
  inputs."websock".dir = "nimpkgs/w/websock";

  
  inputs."json_serialization".type = "github";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".repo = "flake-nimble";
  inputs."json_serialization".ref = "flake-pinning";
  inputs."json_serialization".dir = "nimpkgs/j/json_serialization";

  outputs = { self, nixpkgs, src-json_rpc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-json_rpc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-json_rpc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}