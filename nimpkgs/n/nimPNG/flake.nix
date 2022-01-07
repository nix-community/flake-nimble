{
  description = ''
    PNG(Portable Network Graphics) encoder and decoder
  '';
  inputs.src-nimPNG.url = "https://github.com/jangko/nimPNG";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
