{
  description = ''
    Call remote Nim functions as if it's local
  '';
  inputs.src-nodem.url = "https://github.com/al6x/nim?subdir=nodem";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
