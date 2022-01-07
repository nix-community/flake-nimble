{
  description = ''
    The image management library written in Nim.
  '';
  inputs.src-nimage.url = "https://github.com/ethosa/nimage";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
