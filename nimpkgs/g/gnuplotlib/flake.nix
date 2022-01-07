{
  description = ''
    gnuplot interface
  '';
  inputs.src-gnuplotlib.url = "https://github.com/planetis-m/gnuplotlib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
