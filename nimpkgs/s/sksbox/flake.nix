{
  description = ''
    A native-nim implementaton of the sBOX generic container format.
  '';
  inputs.src-sksbox.url = "https://github.com/Skrylar/sksbox";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
