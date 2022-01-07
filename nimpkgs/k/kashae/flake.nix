{
  description = ''
    Calculation caching library
  '';
  inputs.src-kashae.url = "https://github.com/beef331/kashae";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
