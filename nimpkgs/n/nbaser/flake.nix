{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';
  inputs."nbaser-archive/develop".url = "path:./archive/develop";
  inputs."nbaser-develop".url = "path:./develop";
  inputs."nbaser-master".url = "path:./master";
  inputs."nbaser-v1_0_0".url = "path:./v1_0_0";
  inputs."nbaser-v1_0_1".url = "path:./v1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}