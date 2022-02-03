{
  description = ''webrod'';
  inputs."webrod-main".url = "path:./main";
  inputs."webrod-0_1_0".url = "path:./0_1_0";
  inputs."webrod-0_2_0".url = "path:./0_2_0";
  inputs."webrod-0_3_0".url = "path:./0_3_0";
  inputs."webrod-0_4_0".url = "path:./0_4_0";
  inputs."webrod-0_5_0".url = "path:./0_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}