{
  description = ''
    An implementation of cat in Nim
  '';
  inputs.src-nimcat.url = "https://github.com/shakna-israel/nimcat";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
