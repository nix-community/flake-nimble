{
  description = ''
    Transform latin letters to runes & vice versa. Four runic dialects available.
  '';
  inputs.src-riimut.url = "https://github.com/stscoundrel/riimut-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
