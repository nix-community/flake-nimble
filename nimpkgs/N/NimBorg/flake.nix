{
  description = ''
    High-level and low-level interfaces to python and lua
  '';
  inputs.src-NimBorg.url = "https://github.com/micklat/NimBorg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
