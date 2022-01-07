{
  description = ''
    Check minecraft server status
  '';
  inputs.src-minecraft_server_status.url = "https://github.com/GabrielLasso/minecraft_server_status";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
