{
  description = ''
    Simple vector library for nim-lang.
  '';
  inputs.src-simple_vector.url = "https://github.com/Ephiiz/simple_vector";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
