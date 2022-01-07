{
  description = ''
    Parsing and serializing for the TNetstring format.
  '';
  inputs.src-tnetstring.url = "https://github.com/mahlonsmith/nim-tnetstring";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
