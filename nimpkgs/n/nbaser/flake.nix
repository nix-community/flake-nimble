{
  description = ''
    Encode/decode arbitrary unicode bases from size 2 to 256
  '';
  inputs.src-nbaser.url = "https://github.com/D-Nice/nbaser";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
