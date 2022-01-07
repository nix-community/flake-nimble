{
  description = ''
    The Nim bindings for linksplatform/Data.Triplets.Kernel.
  '';
  inputs.src-triplets.url = "https://github.com/linksplatform/Data.Triplets";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
