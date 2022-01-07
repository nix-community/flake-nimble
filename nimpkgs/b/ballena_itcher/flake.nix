{
  description = ''
    Flash ISO images to SD cards & USB drives, safely and easily.
  '';
  inputs.src-ballena_itcher.url = "https://github.com/juancarlospaco/ballena-itcher";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
