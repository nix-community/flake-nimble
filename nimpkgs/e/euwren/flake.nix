{
  description = ''
    High-level Wren wrapper
  '';
  inputs.src-euwren.url = "https://github.com/liquid600pgm/euwren";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
