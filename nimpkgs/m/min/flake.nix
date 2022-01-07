{
  description = ''
    A small but practical concatenative programming language and shell.
  '';
  inputs.src-min.url = "https://github.com/h3rald/min";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
