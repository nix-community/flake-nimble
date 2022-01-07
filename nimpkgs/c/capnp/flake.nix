{
  description = ''
    Cap'n Proto implementation for Nim
  '';
  inputs.src-capnp.url = "https://github.com/zielmicha/capnp.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
