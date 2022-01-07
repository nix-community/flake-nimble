{
  description = ''
    A wrapper of libsndfile
  '';
  inputs.src-sndfile.url = "https://github.com/julienaubert/nim-sndfile";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
