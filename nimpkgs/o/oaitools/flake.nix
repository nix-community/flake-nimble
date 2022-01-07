{
  description = ''
    A high-level OAI-PMH library.
  '';
  inputs.src-oaitools.url = "https://github.com/markpbaggett/oaitools.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
