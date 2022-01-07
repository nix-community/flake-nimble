{
  description = ''
    WIP strongly-typed argument parser with sub command support
  '';
  inputs.src-argparse.url = "https://github.com/iffy/nim-argparse";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
