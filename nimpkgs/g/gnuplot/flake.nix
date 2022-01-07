{
  description = ''
    Nim interface to gnuplot
  '';
  inputs.src-gnuplot.url = "https://github.com/dvolk/gnuplot.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
