{
  description = ''
    A DSL for quickly writing parsers
  '';
  inputs.src-glossolalia.url = "https://github.com/fowlmouth/glossolalia";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
