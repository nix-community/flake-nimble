{
  description = ''
    An implementation of Range Queries in Nim
  '';
  inputs.src-rangequeries.url = "https://github.com/vanyle/RangeQueriesNim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
