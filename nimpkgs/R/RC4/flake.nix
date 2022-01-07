{
  description = ''
    RC4 library implementation
  '';
  inputs.src-RC4.url = "https://github.com/OHermesJunior/nimRC4";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
