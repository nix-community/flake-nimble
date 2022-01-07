{
  description = ''
    Redneck Translator for Y'all
  '';
  inputs.src-redneck_translator.url = "https://github.com/juancarlospaco/redneck-translator";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
