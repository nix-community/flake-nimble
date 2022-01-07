{
  description = ''
    Image manipulation library
  '';
  inputs.src-imageman.url = "https://github.com/SolitudeSF/imageman";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
