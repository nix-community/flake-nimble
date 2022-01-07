{
  description = ''
    a simple test framework for nim.
  '';
  inputs.src-nimsuite.url = "https://github.com/c6h4clch3/NimSuite";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
