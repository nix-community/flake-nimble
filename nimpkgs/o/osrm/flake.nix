{
  description = ''
    Open Source Routing Machine for OpenStreetMap API Lib and App
  '';
  inputs.src-osrm.url = "https://github.com/juancarlospaco/nim-osrm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
