{
  description = ''
    Pure nim implementation of MurmurHash
  '';
  inputs.src-murmurhash.url = "https://github.com/cwpearson/nim-murmurhash";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
