{
  description = ''
    This is an implementation of Clojures persistent vectors in Nim.
  '';
  inputs.src-persvector.url = "https://github.com/PMunch/nim-persistent-vector";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
