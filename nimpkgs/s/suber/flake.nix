{
  description = ''
    Pub/Sub engine
  '';
  inputs.src-suber.url = "https://github.com/olliNiinivaara/Suber";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
