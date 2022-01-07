{
  description = ''
    LLVM bindings for the Nim language.
  '';
  inputs.src-LLVM.url = "https://github.com/FedeOmoto/llvm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
