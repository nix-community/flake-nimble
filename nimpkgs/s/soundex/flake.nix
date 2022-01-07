{
  description = ''
    soundex algorithm
  '';
  inputs.src-soundex.url = "https://github.com/Kashiwara0205/soundex";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
