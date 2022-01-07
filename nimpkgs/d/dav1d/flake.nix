{
  description = ''
    A nimterop wrapper for the dav1d portable-and-fast AV1 video decoder
  '';
  inputs.src-dav1d.url = "https://github.com/capocasa/nim-dav1d";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
