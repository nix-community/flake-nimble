{
  description = ''
    Simple binary heap implementation
  '';
  inputs.src-binaryheap.url = "https://github.com/bluenote10/nim-heap";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
