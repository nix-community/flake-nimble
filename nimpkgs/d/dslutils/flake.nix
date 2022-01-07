{
  description = ''
    A macro collection for creating DSL in nim
  '';
  inputs.src-dslutils.url = "https://github.com/codehz/dslutils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
