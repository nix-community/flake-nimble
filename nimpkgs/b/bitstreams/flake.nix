{
  description = ''
    Interface for reading per bits
  '';
  inputs.src-bitstreams.url = "https://github.com/sealmove/bitstreams";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
