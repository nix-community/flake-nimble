{
  description = ''
    declarative UI framework for building Canvas
  '';
  inputs.src-Blackvas.url = "https://github.com/momeemt/Blackvas";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
