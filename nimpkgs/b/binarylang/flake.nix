{
  description = ''
    Binary parser/encoder DSL
  '';
  inputs.src-binarylang.url = "https://github.com/sealmove/binarylang";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
