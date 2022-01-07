{
  description = ''
    Nim interface to plotly
  '';
  inputs.src-plotly.url = "https://github.com/SciNim/nim-plotly";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
