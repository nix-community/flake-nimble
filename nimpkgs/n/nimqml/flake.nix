{
  description = ''
    Qt Qml bindings
  '';
  inputs.src-nimqml.url = "https://github.com/filcuc/nimqml";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
