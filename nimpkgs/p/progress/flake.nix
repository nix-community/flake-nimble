{
  description = ''
    A simple progress bar for Nim.
  '';
  inputs.src-progress.url = "https://github.com/euantorano/progress.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
