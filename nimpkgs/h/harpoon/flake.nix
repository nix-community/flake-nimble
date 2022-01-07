{
  description = ''
    HTTP Client
  '';
  inputs.src-harpoon.url = "https://github.com/juancarlospaco/harpoon";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
