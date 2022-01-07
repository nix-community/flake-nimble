{
  description = ''
    Expat wrapper for Nim
  '';
  inputs.src-expat.url = "https://github.com/nim-lang/expat";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
