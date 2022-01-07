{
  description = ''
    Nim port of Python's grp module for working with the UNIX group database file
  '';
  inputs.src-grp.url = "https://github.com/achesak/nim-grp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
