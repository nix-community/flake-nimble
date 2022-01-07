{
  description = ''
    Sequoia PGP wrapper for Nim
  '';
  inputs.src-sequoia.url = "https://github.com/ba0f3/sequoia.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
