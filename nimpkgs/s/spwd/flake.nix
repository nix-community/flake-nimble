{
  description = ''
    Nim port of Python's spwd module for working with the UNIX shadow password file
  '';
  inputs.src-spwd.url = "https://github.com/achesak/nim-spwd";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
