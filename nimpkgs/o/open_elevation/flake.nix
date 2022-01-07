{
  description = ''
    OpenStreetMap Elevation API MultiSync Client for Nim
  '';
  inputs.src-open_elevation.url = "https://github.com/juancarlospaco/nim-open-elevation";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
