{
  description = ''
    Nim library to get/set a hostname
  '';
  inputs.src-hostname.url = "https://github.com/rominf/nim-hostname";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
