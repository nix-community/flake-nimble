{
  description = ''
    OpenStreetMap API Lib for Nim
  '';
  inputs.src-openstreetmap.url = "https://github.com/juancarlospaco/nim-openstreetmap";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
