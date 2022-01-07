{
  description = ''
    Arch Linux Pacman Optimizer
  '';
  inputs.src-chonker.url = "https://github.com/juancarlospaco/nim-chonker";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
