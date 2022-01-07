{
  description = ''
    Tiger hash function
  '';
  inputs.src-tiger.url = "https://git.sr.ht/~ehmry/nim_tiger";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
