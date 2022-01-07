{
  description = ''
    Easy and fast generator for valid json in nim
  '';
  inputs.src-json_builder.url = "https://github.com/undecided/json_builder";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
