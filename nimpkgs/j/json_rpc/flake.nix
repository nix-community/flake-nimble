{
  description = ''Nim library for implementing JSON-RPC clients and servers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."json_rpc-master".type = "github";
  inputs."json_rpc-master".owner = "riinr";
  inputs."json_rpc-master".repo = "flake-nimble";
  inputs."json_rpc-master".ref = "flake-pinning";
  inputs."json_rpc-master".dir = "nimpkgs/j/json_rpc/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}