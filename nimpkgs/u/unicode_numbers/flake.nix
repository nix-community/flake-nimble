{
  description = ''
    Converts a number into a specially formatted Unicode string
  '';
  inputs.src-unicode_numbers.url = "https://github.com/Aearnus/unicode_numbers";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
