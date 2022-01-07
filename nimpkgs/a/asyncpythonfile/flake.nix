{
  description = ''
    High level, asynchronous file API mimicking Python's file interface.
  '';
  inputs.src-asyncpythonfile.url = "https://github.com/fallingduck/asyncpythonfile-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
