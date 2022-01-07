{
  description = ''
    A high-level image I/O and manipulation library for Nim.
  '';
  inputs.src-inumon.url = "https://github.com/dizzyliam/inumon";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
