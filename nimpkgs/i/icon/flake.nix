{
  description = ''
    Generate icon files from PNG files.
  '';
  inputs.src-icon.url = "https://github.com/bung87/icon";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
