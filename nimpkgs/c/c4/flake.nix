{
  description = ''
    Game framework, modular and extensible
  '';
  inputs.src-c4.url = "https://github.com/c0ntribut0r/cat-400";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
