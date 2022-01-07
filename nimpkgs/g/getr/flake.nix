{
  description = ''
    Benchmarking wrapper around getrusage()
  '';
  inputs.src-getr.url = "https://github.com/jrfondren/getr-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
