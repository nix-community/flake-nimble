{
  description = ''
    Bindings for Simple and Fast Multimedia Library (through CSFML)
  '';
  inputs.src-csfml.url = "https://github.com/oprypin/nim-csfml";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
