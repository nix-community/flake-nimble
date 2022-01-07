{
  description = ''
    Nim wrapper for libssh2
  '';
  inputs.src-libssh2.url = "https://github.com/ba0f3/libssh2.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
