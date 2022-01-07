{
  description = ''
    Neverwinter Nights 1 data accessor library
  '';
  inputs.src-neverwinter.url = "https://github.com/niv/neverwinter.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
