{
  description = ''
    A library for playing audio files
  '';
  inputs.src-parasound.url = "https://github.com/paranim/parasound";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
