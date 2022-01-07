{
  description = ''
    most quick REPL of nim
  '';
  inputs.src-replim.url = "https://github.com/gmshiba/replim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
