{
  description = ''
    Nim module for filename matching with UNIX shell patterns
  '';
  inputs.src-fnmatch.url = "https://github.com/achesak/nim-fnmatch";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
