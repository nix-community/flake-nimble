{
  description = ''
    A library that implements the note.txt specification for note taking.
  '';
  inputs.src-notetxt.url = "https://github.com/mrshu/nim-notetxt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
