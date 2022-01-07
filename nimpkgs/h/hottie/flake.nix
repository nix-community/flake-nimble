{
  description = ''
    Sampling profiler that finds hot paths in your code.
  '';
  inputs.src-hottie.url = "https://github.com/treeform/hottie";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
