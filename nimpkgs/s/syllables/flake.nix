{
  description = ''
    Syllable estimation for Nim.
  '';
  inputs.src-syllables.url = "https://github.com/tonogram/nim-syllables";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
