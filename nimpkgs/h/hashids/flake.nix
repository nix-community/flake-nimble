{
  description = ''
    Nim implementation of Hashids
  '';
  inputs.src-hashids.url = "https://github.com/achesak/nim-hashids";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
