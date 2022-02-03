{
  description = ''Tiny library to check if a system package is already installed.'';
  inputs."checkpack-develop".url = "path:./develop";
  inputs."checkpack-master".url = "path:./master";
  inputs."checkpack-0_1_0".url = "path:./0_1_0";
  inputs."checkpack-0_1_1".url = "path:./0_1_1";
  inputs."checkpack-0_2_0".url = "path:./0_2_0";
  inputs."checkpack-0_3_0".url = "path:./0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}