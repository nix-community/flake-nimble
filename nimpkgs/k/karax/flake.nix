{
  description = ''
    Karax is a framework for developing single page applications in Nim.
  '';
  inputs.src-karax.url = "https://github.com/karaxnim/karax/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
