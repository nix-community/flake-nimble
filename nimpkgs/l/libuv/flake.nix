{
  description = ''
    libuv bindings for Nim
  '';
  inputs.src-libuv.url = "https://github.com/lcrees/libuv";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
