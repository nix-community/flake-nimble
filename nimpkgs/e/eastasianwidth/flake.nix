{
  description = ''eastasianwidth is library for EastAsianWidth.'';
  inputs."eastasianwidth-master".url = "path:./master";
  inputs."eastasianwidth-1_1_0".url = "path:./1_1_0";
  inputs."eastasianwidth-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}