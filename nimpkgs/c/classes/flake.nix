{
  description = ''
    Adds class support to Nim.
  '';
  inputs.src-classes.url = "https://github.com/jjv360/nim-classes";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
