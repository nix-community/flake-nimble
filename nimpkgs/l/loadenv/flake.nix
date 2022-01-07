{
  description = ''
    load .env variables
  '';
  inputs.src-loadenv.url = "https://github.com/xmonader/nim-loadenv";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
