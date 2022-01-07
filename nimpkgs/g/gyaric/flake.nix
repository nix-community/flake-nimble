{
  description = ''
    gyaric is a module to encode/decode text to unreadable gyaru's text.
  '';
  inputs.src-gyaric.url = "https://github.com/jiro4989/gyaric";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
