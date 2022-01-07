{
  description = ''
    A library of useful functions and tools for nim.
  '';
  inputs.src-stones.url = "https://github.com/binhonglee/stones";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
