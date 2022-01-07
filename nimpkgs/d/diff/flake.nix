{
  description = ''
    Library for finding the differences between two sequences
  '';
  inputs.src-diff.url = "https://github.com/mark-summerfield/diff";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
