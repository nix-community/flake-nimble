{
  description = ''
    Plotting module in pure nim
  '';
  inputs.src-nimetry.url = "https://github.com/ijneb/nimetry";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
