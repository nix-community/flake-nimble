{
  description = ''
    Exploration of various implementations of memory range types
  '';
  inputs.src-ranges.url = "https://github.com/status-im/nim-ranges";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
