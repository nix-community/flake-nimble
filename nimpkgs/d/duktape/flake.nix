{
  description = ''
    wrapper for the Duktape embeddable Javascript engine
  '';
  inputs.src-duktape.url = "https://github.com/manguluka/duktape-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
