{
  description = ''
    Simpleflake for nim
  '';
  inputs.src-simpleflake.url = "https://github.com/aisk/simpleflake.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
