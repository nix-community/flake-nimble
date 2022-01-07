{
  description = ''
    Code expander for competitive programing in Nim.
  '';
  inputs.src-expander.url = "https://github.com/soraiemame/expander";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
