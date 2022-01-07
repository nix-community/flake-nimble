{
  description = ''
    Simple wrapper of the Imlib2 library
  '';
  inputs.src-imlib2.url = "https://github.com/PMunch/Imlib2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
