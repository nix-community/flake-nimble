{
  description = ''
    Chart plugin for wNim.
  '';
  inputs.src-wChart.url = "https://github.com/bunkford/wChart";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
