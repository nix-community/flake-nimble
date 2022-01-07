{
  description = ''
    Operators, commands and functions more c-like, plus a few other utilities
  '';
  inputs.src-c_alikes.url = "https://github.com/ReneSac/c_alikes";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
