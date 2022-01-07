{
  description = ''
    client for sonic search backend
  '';
  inputs.src-sonic.url = "https://github.com/xmonader/nim-sonic-client";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
