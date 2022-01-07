{
  description = ''
    Basic Option[T] library
  '';
  inputs.src-optional_t.url = "https://github.com/flaviut/optional_t";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
