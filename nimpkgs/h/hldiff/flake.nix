{
  description = ''
    A highlighter for diff -u-like output & port of Python difflib
  '';
  inputs.src-hldiff.url = "https://github.com/c-blake/hldiff";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
