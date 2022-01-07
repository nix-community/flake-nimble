{
  description = ''
    Deprecated module for vector/matrices operations.
  '';
  inputs.src-basic3d.url = "https://github.com/nim-lang/basic3d";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
