{
  description = ''
    Another MessagePack implementation written in pure nim
  '';
  inputs.src-msgpack4nim.url = "https://github.com/jangko/msgpack4nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
