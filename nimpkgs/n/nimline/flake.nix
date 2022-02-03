{
  description = ''Wrapper-less C/C++ interop for Nim'';
  inputs."nimline-master".url = "path:./master";
  inputs."nimline-0_1_1".url = "path:./0_1_1";
  inputs."nimline-0_1_3".url = "path:./0_1_3";
  inputs."nimline-v0_1_0".url = "path:./v0_1_0";
  inputs."nimline-v0_1_1".url = "path:./v0_1_1";
  inputs."nimline-v0_1_2".url = "path:./v0_1_2";
  inputs."nimline-v0_1_3".url = "path:./v0_1_3";
  inputs."nimline-v0_1_4".url = "path:./v0_1_4";
  inputs."nimline-v0_1_5".url = "path:./v0_1_5";
  inputs."nimline-v0_1_6".url = "path:./v0_1_6";
  inputs."nimline-v0_1_7".url = "path:./v0_1_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}