{
  description = ''
    This library is a wrapper to C GDBM library
  '';
  inputs.src-gdbmc.url = "https://github.com/vycb/gdbmc.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
