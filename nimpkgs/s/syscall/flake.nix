{
  description = ''
    Raw system calls for Nim
  '';
  inputs.src-syscall.url = "https://github.com/def-/nim-syscall";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
