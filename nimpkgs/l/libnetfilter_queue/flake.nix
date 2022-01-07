{
  description = ''
    libnetfilter_queue wrapper for Nim
  '';
  inputs.src-libnetfilter_queue.url = "https://github.com/ba0f3/libnetfilter_queue.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
