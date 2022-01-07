{
  description = ''
    A Matrix (https://matrix.org) client and appservice API wrapper for Nim!
  '';
  inputs.src-matrixsdk.url = "https://github.com/dylhack/matrix-nim-sdk";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
