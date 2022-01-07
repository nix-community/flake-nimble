{
  description = ''
    A fast and simple command line argument parser inspired by Python's argparse.
  '';
  inputs.src-clapfn.url = "https://github.com/oliversandli/clapfn";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
