{
  description = ''
    Nim0 is a toy one-pass compiler for a limited subset of the Nim language, targetting a 32-bit RISC CPU. Compiled Nim0 programs can be executed in the RISC emulator. All this in 5 heavily-documented sources, totalling less than 4k LOC. It is a port of Niklaus Wirth's Oberon-0 compiler as described in his book Compiler construction (included in the package), cross-referenced in the sources, that you can follow while reading the book.
  '';
  inputs.src-nim0.url = "https://gitlab.com/pmetras/nim0.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
