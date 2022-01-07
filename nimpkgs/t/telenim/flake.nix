{
  description = ''
    A high-level async TDLib wrapper for Nim
  '';
  inputs.src-telenim.url = "https://github.com/Yardanico/telenim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
