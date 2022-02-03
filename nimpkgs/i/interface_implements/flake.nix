{
  description = ''implements macro creates toInterface proc.'';
  inputs."interface_implements-main".url = "path:./main";
  inputs."interface_implements-0_1_0".url = "path:./0_1_0";
  inputs."interface_implements-0_2_0".url = "path:./0_2_0";
  inputs."interface_implements-0_2_1".url = "path:./0_2_1";
  inputs."interface_implements-v0_2_2".url = "path:./v0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}