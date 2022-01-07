{
  description = ''
    A glue wrapper to do awk-style text processing with Nim
  '';
  inputs.src-naw.url = "https://github.com/capocasa/naw";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
