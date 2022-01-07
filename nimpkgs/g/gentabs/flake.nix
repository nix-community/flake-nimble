{
  description = ''
    Efficient hash table that is a key-value mapping (removed from stdlib)
  '';
  inputs.src-gentabs.url = "https://github.com/lcrees/gentabs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
