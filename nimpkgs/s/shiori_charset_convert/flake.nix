{
  description = ''
    The SHIORI Message charset convert utility
  '';
  inputs.src-shiori_charset_convert.url = "https://github.com/Narazaka/shiori_charset_convert-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
