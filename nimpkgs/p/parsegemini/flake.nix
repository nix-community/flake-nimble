{
  description = ''
    Library for parsing text/gemini
  '';
  inputs.src-parsegemini.url = "https://github.com/autumngray/parsegemini";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
