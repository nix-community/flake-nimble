{
  description = ''
    mmap-backed bitarray implementation in Nim.
  '';
  inputs.src-bitarray.url = "https://github.com/onecodex/nim-bitarray";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
