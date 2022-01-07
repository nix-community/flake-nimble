{
  description = ''
    Library for splitting a string into shell words
  '';
  inputs.src-shlex.url = "https://github.com/SolitudeSF/shlex";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
