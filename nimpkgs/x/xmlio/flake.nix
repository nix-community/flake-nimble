{
  description = ''
    Mapping nim type to xml node, and parse from it.
  '';
  inputs.src-xmlio.url = "https://github.com/codehz/xmlio";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
