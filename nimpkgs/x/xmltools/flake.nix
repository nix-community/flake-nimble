{
  description = ''
    High level xml library for Nim
  '';
  inputs.src-xmltools.url = "https://github.com/vegansk/xmltools";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
