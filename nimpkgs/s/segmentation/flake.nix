{
  description = ''
    Unicode text segmentation tr29
  '';
  inputs.src-segmentation.url = "https://github.com/nitely/nim-segmentation";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
