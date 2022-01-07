{
  description = ''
    Youtube data extractor
  '';
  inputs.src-ytextractor.url = "https://github.com/thisago/ytextractor";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
