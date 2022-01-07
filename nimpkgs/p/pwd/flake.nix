{
  description = ''
    Nim port of Python's pwd module for working with the UNIX password file
  '';
  inputs.src-pwd.url = "https://github.com/achesak/nim-pwd";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
