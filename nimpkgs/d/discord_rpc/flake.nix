{
  description = ''
    Discord RPC/Rich Presence client
  '';
  inputs.src-discord_rpc.url = "https://github.com/SolitudeSF/discord_rpc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
