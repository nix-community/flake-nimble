{
  description = ''github api'';
  inputs."github-master".url = "path:./master";
  inputs."github-1_0_0".url = "path:./1_0_0";
  inputs."github-1_0_1".url = "path:./1_0_1";
  inputs."github-1_0_2".url = "path:./1_0_2";
  inputs."github-1_0_3".url = "path:./1_0_3";
  inputs."github-1_0_4".url = "path:./1_0_4";
  inputs."github-2_0_0".url = "path:./2_0_0";
  inputs."github-2_0_1".url = "path:./2_0_1";
  inputs."github-2_0_2".url = "path:./2_0_2";
  inputs."github-2_0_3".url = "path:./2_0_3";
  inputs."github-2_0_4".url = "path:./2_0_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}