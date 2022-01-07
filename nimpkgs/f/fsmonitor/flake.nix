{
  description = ''
    The ex-stdlib module fsmonitor.
  '';
  inputs.src-fsmonitor.url = "https://github.com/nim-lang/graveyard?subdir=fsmonitor";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
