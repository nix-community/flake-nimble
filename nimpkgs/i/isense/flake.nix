{
  description = ''
    Bindings for the InterSense SDK
  '';
  inputs.src-isense.url = "https://github.com/nimious/isense.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
