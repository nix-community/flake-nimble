{
  description = ''
    Asynchronous PostgreSQL driver for Nim Language.
  '';
  inputs.src-asyncpg.url = "https://github.com/cheatfate/asyncpg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
