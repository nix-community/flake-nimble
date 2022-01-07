{
  description = ''
    iterate through files and lines
  '';
  inputs.src-fileinput.url = "https://github.com/achesak/nim-fileinput";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
