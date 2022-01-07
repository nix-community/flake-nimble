{
  description = ''
    OpenStreetMap Nominatim API Lib for Nim
  '';
  inputs.src-nominatim.url = "https://github.com/juancarlospaco/nim-nominatim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
