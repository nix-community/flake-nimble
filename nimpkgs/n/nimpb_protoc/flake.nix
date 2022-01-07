{
  description = ''
    Protocol Buffers compiler support package for nimpb
  '';
  inputs.src-nimpb_protoc.url = "https://github.com/oswjk/nimpb_protoc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
