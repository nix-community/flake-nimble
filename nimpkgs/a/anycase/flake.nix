{
  description = ''
    Convert strings to any case
  '';
  inputs.src-anycase.url = "https://github.com/lamartire/anycase";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
