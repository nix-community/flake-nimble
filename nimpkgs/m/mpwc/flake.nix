{
  description = ''
    Master Password command line utility
  '';
  inputs.src-mpwc.url = "https://github.com/SolitudeSF/mpwc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
