{
  description = ''
    Salted Challenge Response Authentication Mechanism (SCRAM) 
  '';
  inputs.src-scram.url = "https://github.com/rgv151/scram";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
