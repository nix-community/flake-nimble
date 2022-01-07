{
  description = ''
    base64 cui
  '';
  inputs.src-base64_decoder.url = "https://github.com/momeemt/base64_cui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
