{
  description = ''
    Bindings for the Thalmic Labs Myo gesture control armband SDK.
  '';
  inputs.src-myo.url = "https://github.com/nimious/myo.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
