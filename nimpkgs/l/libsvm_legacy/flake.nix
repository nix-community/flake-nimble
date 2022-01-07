{
  description = ''
    Wrapper for libsvm.
  '';
  inputs.src-libsvm_legacy.url = "https://github.com/nim-lang/libsvm_legacy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
