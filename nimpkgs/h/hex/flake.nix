{
  description = ''
    A simple hex package for Nim
  '';
  inputs.src-hex.url = "https://github.com/esbullington/nimrod-hex";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
