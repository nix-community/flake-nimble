{
  description = ''
    Get information about colors and convert them in the command line
  '';
  inputs.src-clr.url = "https://github.com/Calinou/clr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
