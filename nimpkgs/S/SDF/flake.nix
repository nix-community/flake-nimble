{
  description = ''
    Signed Distance Field builder for contour texturing in Nim
  '';
  inputs.src-SDF.url = "https://github.com/Halsys/SDF.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
