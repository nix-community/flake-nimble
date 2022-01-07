{
  description = ''
    Bring a gettext-like internationalisation module to Nim
  '';
  inputs.src-i18n.url = "https://github.com/Parashurama/nim-i18n";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
