{
  description = ''
    json de/serializer for tuples and more
  '';
  inputs.src-jser.url = "https://github.com/niv/jser.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
