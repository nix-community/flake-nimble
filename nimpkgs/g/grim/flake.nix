{
  description = ''
    Graphs in nim!
  '';
  inputs.src-grim.url = "https://github.com/ebran/grim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
