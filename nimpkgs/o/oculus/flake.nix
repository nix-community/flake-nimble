{
  description = ''
    Bindings for the Oculus VR SDK.
  '';
  inputs.src-oculus.url = "https://github.com/nimious/oculus.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
