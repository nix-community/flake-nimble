{
  description = ''BMP encoder and decoder'';
  inputs."nimBMP-master".url = "path:./master";
  inputs."nimBMP-v0_1_6".url = "path:./v0_1_6";
  inputs."nimBMP-v0_1_7".url = "path:./v0_1_7";
  inputs."nimBMP-v0_1_8".url = "path:./v0_1_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}