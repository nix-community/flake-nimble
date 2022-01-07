{
  description = ''
    128-bit integers
  '';
  inputs.src-nint128.url = "https://github.com/rockcavera/nim-nint128";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
