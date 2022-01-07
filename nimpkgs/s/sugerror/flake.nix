{
  description = ''
    Terse and composable error handling.
  '';
  inputs.src-sugerror.url = "https://github.com/quelklef/nim-sugerror";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
