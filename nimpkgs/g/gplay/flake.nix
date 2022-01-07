{
  description = ''
    Google Play APK Uploader
  '';
  inputs.src-gplay.url = "https://github.com/yglukhov/gplay";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
