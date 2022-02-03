{
  description = ''Pure Nim XML parser'';
  inputs."xml-master".url = "path:./master";
  inputs."xml-0_1_0".url = "path:./0_1_0";
  inputs."xml-0_1_1".url = "path:./0_1_1";
  inputs."xml-0_1_2".url = "path:./0_1_2";
  inputs."xml-0_1_3".url = "path:./0_1_3";
  inputs."xml-0_1_4".url = "path:./0_1_4";
  inputs."xml-devel".url = "path:./devel";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}