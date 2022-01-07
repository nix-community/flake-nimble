{
  description = ''
    Moss (Measure of Software Similarity) implementation in Nim.
  '';
  inputs.src-moss_nim.url = "https://github.com/D4D3VD4V3/moss_nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
