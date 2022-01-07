{
  description = ''
    Argument parser
  '';
  inputs.src-nap.url = "https://github.com/madprops/nap";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
