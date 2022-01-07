{
  description = ''
    wrapper for libclang (the C-interface of the clang LLVM frontend)
  '';
  inputs.src-libclang.url = "https://github.com/cowboy-coders/nim-libclang.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
