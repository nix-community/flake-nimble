{
  description = ''
    Override the dot operator to access nested subfields of a Nim object.
  '';
  inputs.src-subfield.url = "https://github.com/jyapayne/subfield";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
