{
  description = ''
    Grid plugin for wNim.
  '';
  inputs.src-wZeeGrid.url = "https://github.com/bunkford/wZeeGrid";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
