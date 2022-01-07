{
  description = ''
    glue code generator to bind Nim and Lua together using Nim's powerful macro
  '';
  inputs.src-nimLUA.url = "https://github.com/jangko/nimLUA";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
