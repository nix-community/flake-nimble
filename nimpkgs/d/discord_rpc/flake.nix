{
  description = ''Discord RPC/Rich Presence client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."discord_rpc-master".type = "github";
  inputs."discord_rpc-master".owner = "riinr";
  inputs."discord_rpc-master".repo = "flake-nimble";
  inputs."discord_rpc-master".ref = "flake-pinning";
  inputs."discord_rpc-master".dir = "nimpkgs/d/discord_rpc/master";
  inputs."discord_rpc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discord_rpc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."discord_rpc-v0_1_0".type = "github";
  inputs."discord_rpc-v0_1_0".owner = "riinr";
  inputs."discord_rpc-v0_1_0".repo = "flake-nimble";
  inputs."discord_rpc-v0_1_0".ref = "flake-pinning";
  inputs."discord_rpc-v0_1_0".dir = "nimpkgs/d/discord_rpc/v0_1_0";
  inputs."discord_rpc-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discord_rpc-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."discord_rpc-v0_1_1".type = "github";
  inputs."discord_rpc-v0_1_1".owner = "riinr";
  inputs."discord_rpc-v0_1_1".repo = "flake-nimble";
  inputs."discord_rpc-v0_1_1".ref = "flake-pinning";
  inputs."discord_rpc-v0_1_1".dir = "nimpkgs/d/discord_rpc/v0_1_1";
  inputs."discord_rpc-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discord_rpc-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}