{
  description = ''
    this libraly able to use database/sql of Go
  '';
  inputs.src-db_wrapper.url = "https://github.com/sivchari/db_wrapper";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
