{
  description = ''
    Nim implementation of linenoise command line editor
  '';
  inputs.src-noise.url = "https://github.com/jangko/nim-noise";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
