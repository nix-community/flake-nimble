{
  description = ''Implementation of the Fletcher checksum algorithm.'';
  inputs."fletcher-master".url = "path:./master";
  inputs."fletcher-0_1_0".url = "path:./0_1_0";
  inputs."fletcher-0_2_2".url = "path:./0_2_2";
  inputs."fletcher-0_3_0".url = "path:./0_3_0";
  inputs."fletcher-0_3_1".url = "path:./0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}