{
  description = ''Kombinator is a tool to generate commands line from parameters combination from a config file.'';
  inputs."kombinator-develop".url = "path:./develop";
  inputs."kombinator-master".url = "path:./master";
  inputs."kombinator-1_0_0".url = "path:./1_0_0";
  inputs."kombinator-1_0_1".url = "path:./1_0_1";
  inputs."kombinator-1_0_2".url = "path:./1_0_2";
  inputs."kombinator-1_1_0".url = "path:./1_1_0";
  inputs."kombinator-1_2_0".url = "path:./1_2_0";
  inputs."kombinator-1_3_0".url = "path:./1_3_0";
  inputs."kombinator-1_3_1".url = "path:./1_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}