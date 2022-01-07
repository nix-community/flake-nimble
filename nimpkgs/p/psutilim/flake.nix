{
  description = ''
    Updated psutil module from https://github.com/johnscillieri/psutil-nim
  '';
  inputs.src-psutilim.url = "https://github.com/KittyTechnoProgrammer/psutilim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
