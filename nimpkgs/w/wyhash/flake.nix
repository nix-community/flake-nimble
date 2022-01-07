{
  description = ''
    Nim wrapper for wyhash
  '';
  inputs.src-wyhash.url = "https://github.com/jackhftang/wyhash.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
