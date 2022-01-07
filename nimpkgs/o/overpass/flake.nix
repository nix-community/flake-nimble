{
  description = ''
    OpenStreetMap Overpass API Lib
  '';
  inputs.src-overpass.url = "https://github.com/juancarlospaco/nim-overpass";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
