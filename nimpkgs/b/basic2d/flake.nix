{
  description = ''
    Deprecated module for vector/matrices operations.
  '';
  inputs.src-basic2d.url = "https://github.com/nim-lang/basic2d";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
