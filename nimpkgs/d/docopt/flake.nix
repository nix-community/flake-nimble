{
  description = ''
    Command-line args parser based on Usage message
  '';
  inputs.src-docopt.url = "https://github.com/docopt/docopt.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
