{
  description = ''
    Simple benchmarking to time your code.
  '';
  inputs.src-benchy.url = "https://github.com/treeform/benchy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
