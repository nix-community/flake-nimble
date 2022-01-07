{
  description = ''
    A rudimentary Nim REPL
  '';
  inputs.src-nrpl.url = "https://github.com/vegansk/nrpl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
