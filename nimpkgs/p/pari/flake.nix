{
  description = ''
    Pari/GP C library wrapper
  '';
  inputs.src-pari.url = "https://github.com/lompik/pari.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
