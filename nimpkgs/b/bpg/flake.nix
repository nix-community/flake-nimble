{
  description = ''
    BPG (Better Portable Graphics) for Nim
  '';
  inputs.src-bpg.url = "https://github.com/def-/nim-bpg.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
