{
  description = ''
    Circular buffer implementation
  '';
  inputs.src-RingBuffer.url = "git@github.com:megawac/RingBuffer.nim.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
