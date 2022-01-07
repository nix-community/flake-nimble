{
  description = ''
    Mustache templating for Nim.
  '';
  inputs.src-moustachu.url = "https://github.com/fenekku/moustachu.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
