{
  description = ''
    Conversion between integers and Roman numerals
  '';
  inputs.src-romans.url = "https://github.com/lcrees/romans";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
