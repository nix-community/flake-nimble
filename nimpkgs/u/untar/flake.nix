{
  description = ''
    Library for decompressing tar.gz files.
  '';
  inputs.src-untar.url = "https://github.com/dom96/untar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
