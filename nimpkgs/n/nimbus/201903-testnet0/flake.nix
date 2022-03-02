{
  description = ''An Ethereum 2.0 Sharding Client for Resource-Restricted Devices'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimbus-201903-testnet0.flake = false;
  inputs.src-nimbus-201903-testnet0.type = "github";
  inputs.src-nimbus-201903-testnet0.owner = "status-im";
  inputs.src-nimbus-201903-testnet0.repo = "nimbus";
  inputs.src-nimbus-201903-testnet0.ref = "refs/tags/201903-testnet0";
  inputs.src-nimbus-201903-testnet0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."chronicles".type = "github";
  # inputs."chronicles".owner = "riinr";
  # inputs."chronicles".repo = "flake-nimble";
  # inputs."chronicles".ref = "flake-pinning";
  # inputs."chronicles".dir = "nimpkgs/c/chronicles";
  # inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimcrypto".type = "github";
  # inputs."nimcrypto".owner = "riinr";
  # inputs."nimcrypto".repo = "flake-nimble";
  # inputs."nimcrypto".ref = "flake-pinning";
  # inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  # inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stint".type = "github";
  # inputs."stint".owner = "riinr";
  # inputs."stint".repo = "flake-nimble";
  # inputs."stint".ref = "flake-pinning";
  # inputs."stint".dir = "nimpkgs/s/stint";
  # inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."json_rpc".type = "github";
  # inputs."json_rpc".owner = "riinr";
  # inputs."json_rpc".repo = "flake-nimble";
  # inputs."json_rpc".ref = "flake-pinning";
  # inputs."json_rpc".dir = "nimpkgs/j/json_rpc";
  # inputs."json_rpc".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."json_rpc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."chronos".type = "github";
  # inputs."chronos".owner = "riinr";
  # inputs."chronos".repo = "flake-nimble";
  # inputs."chronos".ref = "flake-pinning";
  # inputs."chronos".dir = "nimpkgs/c/chronos";
  # inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."bncurve".type = "github";
  # inputs."bncurve".owner = "riinr";
  # inputs."bncurve".repo = "flake-nimble";
  # inputs."bncurve".ref = "flake-pinning";
  # inputs."bncurve".dir = "nimpkgs/b/bncurve";
  # inputs."bncurve".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bncurve".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."eth".type = "github";
  # inputs."eth".owner = "riinr";
  # inputs."eth".repo = "flake-nimble";
  # inputs."eth".ref = "flake-pinning";
  # inputs."eth".dir = "nimpkgs/e/eth";
  # inputs."eth".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."eth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."std_shims".type = "github";
  # inputs."std_shims".owner = "riinr";
  # inputs."std_shims".repo = "flake-nimble";
  # inputs."std_shims".ref = "flake-pinning";
  # inputs."std_shims".dir = "nimpkgs/s/std_shims";
  # inputs."std_shims".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."std_shims".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbus-201903-testnet0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbus-201903-testnet0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbus-201903-testnet0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}