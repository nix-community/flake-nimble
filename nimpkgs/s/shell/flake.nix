{
  description = ''A Nim mini DSL to execute shell commands'';
  inputs."shell-master".url = "path:./master";
  inputs."shell-v0_1_0".url = "path:./v0_1_0";
  inputs."shell-v0_1_1".url = "path:./v0_1_1";
  inputs."shell-v0_1_2".url = "path:./v0_1_2";
  inputs."shell-v0_1_3".url = "path:./v0_1_3";
  inputs."shell-v0_2_0".url = "path:./v0_2_0";
  inputs."shell-v0_2_1".url = "path:./v0_2_1";
  inputs."shell-v0_2_2".url = "path:./v0_2_2";
  inputs."shell-v0_2_3".url = "path:./v0_2_3";
  inputs."shell-v0_3_0".url = "path:./v0_3_0";
  inputs."shell-v0_4_0".url = "path:./v0_4_0";
  inputs."shell-v0_4_1".url = "path:./v0_4_1";
  inputs."shell-v0_4_2".url = "path:./v0_4_2";
  inputs."shell-v0_4_3".url = "path:./v0_4_3";
  inputs."shell-v0_4_4".url = "path:./v0_4_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}