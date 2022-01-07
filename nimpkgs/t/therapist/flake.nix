{
  description = ''
    Type-safe commandline parsing with minimal magic
  '';
  inputs.src-therapist.url = "https://bitbucket.org/maxgrenderjones/therapist";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
