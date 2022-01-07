{
  description = ''
    Surfing is a highly functional CLI for Base64.
  '';
  inputs.src-surfing.url = "https://github.com/momeemt/surfing";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
