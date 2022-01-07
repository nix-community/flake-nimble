{
  description = ''
    libvlc bindings for Nim
  '';
  inputs.src-libvlc.url = "https://github.com/Yardanico/nim-libvlc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
