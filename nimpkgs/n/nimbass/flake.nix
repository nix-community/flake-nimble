{
  description = ''Bass wrapper for Nim'';
  inputs."nimbass-master".url = "path:./master";
  inputs."nimbass-v0_1_0".url = "path:./v0_1_0";
  inputs."nimbass-v0_1_2".url = "path:./v0_1_2";
  inputs."nimbass-v0_1_3".url = "path:./v0_1_3";
  inputs."nimbass-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}