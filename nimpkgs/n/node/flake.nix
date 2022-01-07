{
  description = ''
    Library for async programming and communication. This Library uses a future/promise, non-blocking I/O model based on libuv.
  '';
  inputs.src-node.url = "https://github.com/tulayang/nimnode";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
