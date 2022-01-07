{
  description = ''
    Control AnyBar instances with Nim
  '';
  inputs.src-anybar.url = "https://github.com/ba0f3/anybar.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
