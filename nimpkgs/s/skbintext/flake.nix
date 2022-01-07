{
  description = ''
    Binary <-> text conversion.
  '';
  inputs.src-skbintext.url = "https://github.com/skrylar/skbintext";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
