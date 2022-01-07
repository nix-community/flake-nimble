{
  description = ''
    Proton template engine for xml and xhtml files
  '';
  inputs.src-proton.url = "https://github.com/jasonrbriggs/proton-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
