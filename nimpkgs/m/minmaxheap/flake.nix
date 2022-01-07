{
  description = ''
    MinMaxHeap
  '';
  inputs.src-minmaxheap.url = "https://github.com/stefansalewski/minmaxheap";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
