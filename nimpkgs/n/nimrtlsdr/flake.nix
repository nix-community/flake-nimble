{
  description = ''
    A Nim wrapper for librtlsdr
  '';
  inputs.src-nimrtlsdr.url = "https://github.com/jpoirier/nimrtlsdr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
