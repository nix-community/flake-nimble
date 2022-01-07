{
  description = ''
    pure Ini configurations parser
  '';
  inputs.src-configparser.url = "https://github.com/xmonader/nim-configparser";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
