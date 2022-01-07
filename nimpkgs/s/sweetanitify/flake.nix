{
  description = ''
    Sweet_Anita Translator, help spread awareness about Tourettes
  '';
  inputs.src-sweetanitify.url = "https://github.com/juancarlospaco/sweetanitify";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
