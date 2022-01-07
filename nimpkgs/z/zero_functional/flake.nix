{
  description = ''
    A library providing zero-cost chaining for functional abstractions in Nim
  '';
  inputs.src-zero_functional.url = "https://github.com/zero-functional/zero-functional";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
