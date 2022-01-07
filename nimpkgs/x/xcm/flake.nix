{
  description = ''
    Color management utility for X
  '';
  inputs.src-xcm.url = "https://github.com/SolitudeSF/xcm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
