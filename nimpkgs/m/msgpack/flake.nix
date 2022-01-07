{
  description = ''
    A MessagePack binding for Nim
  '';
  inputs.src-msgpack.url = "https://github.com/akiradeveloper/msgpack-nim.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
