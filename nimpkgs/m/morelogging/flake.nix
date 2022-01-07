{
  description = ''
    Logging library with support for async IO, multithreading, Journald.
  '';
  inputs.src-morelogging.url = "https://github.com/FedericoCeratto/nim-morelogging";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
