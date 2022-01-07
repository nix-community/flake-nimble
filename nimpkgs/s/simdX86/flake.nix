{
  description = ''
    Wrappers for X86 SIMD intrinsics
  '';
  inputs.src-simdX86.url = "https://github.com/nimlibs/simdX86";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
