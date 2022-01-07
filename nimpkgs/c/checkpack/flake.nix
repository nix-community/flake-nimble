{
  description = ''
    Tiny library to check if a system package is already installed.
  '';
  inputs.src-checkpack.url = "https://gitlab.com/ArMour85/checkpack";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
