{
  description = ''
    i3 IPC client library
  '';
  inputs.src-i3ipc.url = "https://github.com/FedericoCeratto/nim-i3ipc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
