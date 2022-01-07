{
  description = ''
    Async MySQL Connector write in pure Nim.
  '';
  inputs.src-amysql.url = "https://github.com/bung87/amysql";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
