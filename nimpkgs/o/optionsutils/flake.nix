{
  description = ''
    Utility macros for easier handling of options in Nim
  '';
  inputs.src-optionsutils.url = "https://github.com/PMunch/nim-optionsutils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
