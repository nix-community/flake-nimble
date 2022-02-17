{
  description = ''Discord RPC/Rich Presence client'';
  inputs.src-discord_rpc-master.flake = false;
  inputs.src-discord_rpc-master.type = "github";
  inputs.src-discord_rpc-master.owner = "SolitudeSF";
  inputs.src-discord_rpc-master.repo = "discord_rpc";
  inputs.src-discord_rpc-master.ref = "refs/heads/master";
  
  
  inputs."uuids".type = "github";
  inputs."uuids".owner = "riinr";
  inputs."uuids".repo = "flake-nimble";
  inputs."uuids".ref = "flake-pinning";
  inputs."uuids".dir = "nimpkgs/u/uuids";

  
  inputs."packedjson".type = "github";
  inputs."packedjson".owner = "riinr";
  inputs."packedjson".repo = "flake-nimble";
  inputs."packedjson".ref = "flake-pinning";
  inputs."packedjson".dir = "nimpkgs/p/packedjson";

  outputs = { self, nixpkgs, src-discord_rpc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-discord_rpc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-discord_rpc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}