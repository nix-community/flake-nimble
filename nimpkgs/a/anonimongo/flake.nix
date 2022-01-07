{
  description = ''
    ANOther pure NIm MONGO driver.
  '';
  inputs.src-anonimongo.url = "https://github.com/mashingan/anonimongo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
