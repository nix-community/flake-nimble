{
  description = ''
    libipset wrapper for Nim
  '';
  inputs.src-libipset.url = "https://github.com/ba0f3/libipset.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
