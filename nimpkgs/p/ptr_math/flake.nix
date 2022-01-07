{
  description = ''
    Pointer arithmetic library
  '';
  inputs.src-ptr_math.url = "https://github.com/kaushalmodi/ptr_math";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
