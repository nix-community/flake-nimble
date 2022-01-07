{
  description = ''
    A Mini Server Framework for Nim language
  '';
  inputs.src-nio.url = "https://github.com/KayraG/nio";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
