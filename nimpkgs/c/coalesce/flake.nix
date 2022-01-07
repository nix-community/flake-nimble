{
  description = ''
    A nil coalescing operator ?? for Nim
  '';
  inputs.src-coalesce.url = "https://github.com/piedar/coalesce";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
