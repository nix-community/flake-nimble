{
  description = ''
    Asynchronous networking engine for Nim
  '';
  inputs.src-reactor.url = "https://github.com/zielmicha/reactor.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
