{
  description = ''
    A package that makes creating macros easier
  '';
  inputs.src-macroutils.url = "https://github.com/PMunch/macroutils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
