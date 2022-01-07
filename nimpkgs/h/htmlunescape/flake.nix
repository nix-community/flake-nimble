{
  description = ''
    Port of Python's html.escape and html.unescape to Nim
  '';
  inputs.src-htmlunescape.url = "https://github.com/AmanoTeam/htmlunescape";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
