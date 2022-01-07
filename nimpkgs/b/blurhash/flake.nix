{
  description = ''
    Encoder/decoder for blurhash algorithm
  '';
  inputs.src-blurhash.url = "https://github.com/SolitudeSF/blurhash";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
