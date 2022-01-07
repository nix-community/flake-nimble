{
  description = ''
    PCRE wrapper for Nim
  '';
  inputs.src-nimpcre.url = "https://github.com/genotrance/nimpcre";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
