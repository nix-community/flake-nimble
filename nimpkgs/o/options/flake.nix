{
  description = ''
    Temporary package to fix broken code in 0.11.2 stable.
  '';
  inputs.src-options.url = "https://github.com/fallingduck/options-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
