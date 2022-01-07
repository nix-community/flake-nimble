{
  description = ''
    Whip is high performance web application server based on httpbeast a nest for redix tree based routing with some extra opmtizations.
  '';
  inputs.src-whip.url = "https://github.com/mattaylor/whip";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
