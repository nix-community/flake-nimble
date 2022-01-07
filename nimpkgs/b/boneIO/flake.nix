{
  description = ''
    A low level GPIO library for the BeagleBone board family
  '';
  inputs.src-boneIO.url = "https://github.com/xyz32/boneIO";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
