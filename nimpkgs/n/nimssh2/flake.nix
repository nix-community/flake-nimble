{
  description = ''
    libssh2 wrapper for Nim
  '';
  inputs.src-nimssh2.url = "https://github.com/genotrance/nimssh2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
