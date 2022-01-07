{
  description = ''
    A tiny framework & language for crafting massively parallel data pipelines
  '';
  inputs.src-pipelines.url = "https://github.com/calebwin/pipelines";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
