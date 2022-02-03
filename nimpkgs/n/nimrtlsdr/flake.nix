{
  description = ''A Nim wrapper for librtlsdr'';
  inputs."nimrtlsdr-develop".url = "path:./develop";
  inputs."nimrtlsdr-master".url = "path:./master";
  inputs."nimrtlsdr-v0_1".url = "path:./v0_1";
  inputs."nimrtlsdr-v0_1_1".url = "path:./v0_1_1";
  inputs."nimrtlsdr-v0_1_2".url = "path:./v0_1_2";
  inputs."nimrtlsdr-v0_1_3".url = "path:./v0_1_3";
  inputs."nimrtlsdr-v0_1_4".url = "path:./v0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}