{
  description = ''
    A nimterop wrapper for the opus audio decoder
  '';
  inputs.src-opus.url = "https://github.com/capocasa/nim-opus";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
