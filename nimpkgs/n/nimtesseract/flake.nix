{
  description = ''A wrapper to Tesseract OCR library for Nim'';
  inputs."nimtesseract-master".url = "path:./master";
  inputs."nimtesseract-v0_1_0".url = "path:./v0_1_0";
  inputs."nimtesseract-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}