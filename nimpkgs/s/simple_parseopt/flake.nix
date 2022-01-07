{
  description = ''
    Nim module which provides clean, zero-effort command line parsing.
  '';
  inputs.src-simple_parseopt.url = "https://github.com/onelivesleft/simple_parseopt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
