{
  description = ''
    Compiler package providing the compiler sources as a library.
  '';
  inputs.src-compiler.url = "https://github.com/nim-lang/Nim.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
