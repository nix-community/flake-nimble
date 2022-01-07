{
  description = ''
    libgraphqlparser wrapper for Nim
  '';
  inputs.src-nimgraphql.url = "https://github.com/genotrance/nimgraphql";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
