{
  description = ''Create SVG-files with QR-codes from strings.'';
  inputs."qr-master".url = "path:./master";
  inputs."qr-v1_0_0".url = "path:./v1_0_0";
  inputs."qr-v1_2_0".url = "path:./v1_2_0";
  inputs."qr-v1_3_0".url = "path:./v1_3_0";
  inputs."qr-v1_3_1".url = "path:./v1_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}