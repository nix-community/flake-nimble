{
  description = ''utf-8 string'';
  inputs."ustring-master".url = "path:./master";
  inputs."ustring-0_2_1".url = "path:./0_2_1";
  inputs."ustring-0_2_2".url = "path:./0_2_2";
  inputs."ustring-0_2_3".url = "path:./0_2_3";
  inputs."ustring-0_3_0".url = "path:./0_3_0";
  inputs."ustring-3_0_0".url = "path:./3_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}