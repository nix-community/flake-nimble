{
  description = ''
    A brainfuck interpreter and compiler
  '';
  inputs.src-brainfuck.url = "https://github.com/def-/nim-brainfuck.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
