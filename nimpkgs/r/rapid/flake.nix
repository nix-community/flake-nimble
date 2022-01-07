{
  description = ''
    A game engine for rapid development and easy prototyping
  '';
  inputs.src-rapid.url = "https://github.com/liquid600pgm/rapid";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
