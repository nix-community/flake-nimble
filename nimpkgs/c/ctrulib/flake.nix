{
  description = ''
    ctrulib wrapper
  '';
  inputs.src-ctrulib.url = "https://github.com/skyforce77/ctrulib-nim.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
