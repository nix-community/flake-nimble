{
  description = ''
    A pure nim version of C++'s std::bitset
  '';
  inputs.src-bitset.url = "https://github.com/joryschossau/bitset";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
