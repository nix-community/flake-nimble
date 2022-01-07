{
  description = ''
    Converts ANSI colour codes to HTML span tags with style tags
  '';
  inputs.src-ansitohtml.url = "https://github.com/PMunch/ansitohtml";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
