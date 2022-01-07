{
  description = ''
    parse datetime from various resources
  '';
  inputs.src-datetime_parse.url = "https://github.com/bung87/datetime_parse";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
