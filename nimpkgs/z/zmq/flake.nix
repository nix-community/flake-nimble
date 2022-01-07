{
  description = ''
    ZeroMQ 4 wrapper
  '';
  inputs.src-zmq.url = "https://github.com/nim-lang/nim-zmq";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
