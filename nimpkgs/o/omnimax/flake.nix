{
  description = ''Max wrapper for omni.'';
  inputs."omnimax-develop".url = "path:./develop";
  inputs."omnimax-master".url = "path:./master";
  inputs."omnimax-0_1_0".url = "path:./0_1_0";
  inputs."omnimax-0_2_0".url = "path:./0_2_0";
  inputs."omnimax-0_2_1".url = "path:./0_2_1";
  inputs."omnimax-0_2_2".url = "path:./0_2_2";
  inputs."omnimax-0_2_3".url = "path:./0_2_3";
  inputs."omnimax-0_4_0".url = "path:./0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}