{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';
  inputs."bluu-master".url = "path:./master";
  inputs."bluu-0_0_1".url = "path:./0_0_1";
  inputs."bluu-0_0_2".url = "path:./0_0_2";
  inputs."bluu-0_0_3".url = "path:./0_0_3";
  inputs."bluu-0_0_4".url = "path:./0_0_4";
  inputs."bluu-0_0_5".url = "path:./0_0_5";
  inputs."bluu-0_0_6".url = "path:./0_0_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}