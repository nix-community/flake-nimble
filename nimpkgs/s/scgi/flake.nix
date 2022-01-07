{
  description = ''
    Helper procs for SCGI applications
  '';
  inputs.src-scgi.url = "https://github.com/nim-lang/graveyard?subdir=scgi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
