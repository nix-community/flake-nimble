{
  description = ''An Ethereum 2.0 Sharding Client for Resource-Restricted Devices'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimbus-master.flake = false;
  inputs.src-nimbus-master.type = "github";
  inputs.src-nimbus-master.owner = "status-im";
  inputs.src-nimbus-master.repo = "nimbus";
  inputs.src-nimbus-master.ref = "refs/heads/master";
  
  
  inputs."bncurve".type = "github";
  inputs."bncurve".owner = "riinr";
  inputs."bncurve".repo = "flake-nimble";
  inputs."bncurve".ref = "flake-pinning";
  inputs."bncurve".dir = "nimpkgs/b/bncurve";

  
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";

  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  
  inputs."eth".type = "github";
  inputs."eth".owner = "riinr";
  inputs."eth".repo = "flake-nimble";
  inputs."eth".ref = "flake-pinning";
  inputs."eth".dir = "nimpkgs/e/eth";

  
  inputs."json_rpc".type = "github";
  inputs."json_rpc".owner = "riinr";
  inputs."json_rpc".repo = "flake-nimble";
  inputs."json_rpc".ref = "flake-pinning";
  inputs."json_rpc".dir = "nimpkgs/j/json_rpc";

  
  inputs."libbacktrace".type = "github";
  inputs."libbacktrace".owner = "riinr";
  inputs."libbacktrace".repo = "flake-nimble";
  inputs."libbacktrace".ref = "flake-pinning";
  inputs."libbacktrace".dir = "nimpkgs/l/libbacktrace";

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbus-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}