{
  description = ''
    Nim module/thread initialisation ordering library
  '';
  inputs.src-moduleinit.url = "https://github.com/skunkiferous/moduleinit";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
