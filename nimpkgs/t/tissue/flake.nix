{
  description = ''
    Test failing snippets from Nim's issues
  '';
  inputs.src-tissue.url = "https://github.com/genotrance/tissue";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
