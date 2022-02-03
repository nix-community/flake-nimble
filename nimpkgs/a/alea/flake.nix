{
  description = ''Define and compose random variables'';
  inputs."alea-master".url = "path:./master";
  inputs."alea-0_1_0".url = "path:./0_1_0";
  inputs."alea-0_1_1".url = "path:./0_1_1";
  inputs."alea-0_1_2".url = "path:./0_1_2";
  inputs."alea-0_1_3".url = "path:./0_1_3";
  inputs."alea-0_1_4".url = "path:./0_1_4";
  inputs."alea-0_1_5".url = "path:./0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}