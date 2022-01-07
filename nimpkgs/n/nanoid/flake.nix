{
  description = ''
    The Nim implementation of NanoID
  '';
  inputs.src-nanoid.url = "https://github.com/icyphox/nanoid.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
