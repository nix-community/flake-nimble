{
  description = ''
    String algorithms with succinct data structures
  '';
  inputs.src-cello.url = "https://github.com/andreaferretti/cello";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
