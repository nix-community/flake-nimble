{
  description = ''
    OrientDB driver written in pure Nim, uses the OrientDB 2.0 Binary Protocol with Binary Serialization.
  '';
  inputs.src-orient.url = "https://github.com/philip-wernersbach/nim-orient";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
