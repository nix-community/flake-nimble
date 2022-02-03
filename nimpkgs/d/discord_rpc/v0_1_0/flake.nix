{
  description = ''Discord RPC/Rich Presence client'';
  inputs.src-discord_rpc-v0_1_0.flake = false;
  inputs.src-discord_rpc-v0_1_0.type = "github";
  inputs.src-discord_rpc-v0_1_0.owner = "SolitudeSF";
  inputs.src-discord_rpc-v0_1_0.repo = "discord_rpc";
  inputs.src-discord_rpc-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."uuids".url = "path:../../../u/uuids";
  inputs."uuids".type = "github";
  inputs."uuids".owner = "riinr";
  inputs."uuids".repo = "flake-nimble";
  inputs."uuids".ref = "flake-pinning";
  inputs."uuids".dir = "nimpkgs/u/uuids";

  
  inputs."packedjson".url = "path:../../../p/packedjson";
  inputs."packedjson".type = "github";
  inputs."packedjson".owner = "riinr";
  inputs."packedjson".repo = "flake-nimble";
  inputs."packedjson".ref = "flake-pinning";
  inputs."packedjson".dir = "nimpkgs/p/packedjson";

  outputs = { self, nixpkgs, src-discord_rpc-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-discord_rpc-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-discord_rpc-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}