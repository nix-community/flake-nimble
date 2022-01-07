{
  description = ''
    Nim binding to libfswatch
  '';
  inputs.src-libfswatch.url = "https://github.com/paul-nameless/nim-fswatch";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
