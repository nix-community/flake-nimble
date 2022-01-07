{
  description = ''
    Intel hex file utility library
  '';
  inputs.src-intel_hex.url = "https://github.com/keyme/nim_intel_hex";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
