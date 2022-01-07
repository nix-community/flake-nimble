{
  description = ''
    Amazon Web Services Signature Version 4
  '';
  inputs.src-sigv4.url = "https://github.com/disruptek/sigv4";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
