{
  description = ''
    A dynamic website generator
  '';
  inputs.src-gerbil.url = "https://github.com/jasonprogrammer/gerbil";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
