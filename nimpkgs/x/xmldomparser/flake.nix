{
  description = ''
    Parses an XML Document into a XML DOM Document representation.
  '';
  inputs.src-xmldomparser.url = "https://github.com/nim-lang/graveyard?subdir=xmldomparser";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
