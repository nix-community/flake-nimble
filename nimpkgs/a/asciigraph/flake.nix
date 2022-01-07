{
  description = ''
    Console ascii line charts in pure nim
  '';
  inputs.src-asciigraph.url = "https://github.com/Yardanico/asciigraph";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
