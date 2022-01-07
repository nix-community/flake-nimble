{
  description = ''
    A client for the Arch Linux User Repository (AUR)
  '';
  inputs.src-aur.url = "https://github.com/hnicke/aur.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
