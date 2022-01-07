{
  description = ''
    A Protocol Buffers library for Nim
  '';
  inputs.src-nimpb.url = "https://github.com/oswjk/nimpb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
