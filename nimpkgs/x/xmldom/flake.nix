{
  description = ''
    Implementation of XML DOM Level 2 Core specification (http://www.w3.org/TR/2000/REC-DOM-Level-2-Core-20001113/core.html)
  '';
  inputs.src-xmldom.url = "https://github.com/nim-lang/graveyard?subdir=xmldom";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
