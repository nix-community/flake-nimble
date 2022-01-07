{
  description = ''
    This package tries to provide a lot of the most useful data structures and alogrithms need in the different subfield of bio informatics
  '';
  inputs.src-bionim.url = "https://github.com/Unaimend/bionim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
