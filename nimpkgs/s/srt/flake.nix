{
  description = ''
    Nim module for parsing SRT (SubRip) subtitle files
  '';
  inputs.src-srt.url = "https://github.com/achesak/nim-srt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
