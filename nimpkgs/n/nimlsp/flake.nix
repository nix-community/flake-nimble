{
  description = ''Language Server Protocol implementation for Nim'';
  inputs."nimlsp-master".url = "path:./master";
  inputs."nimlsp-v0_2_0".url = "path:./v0_2_0";
  inputs."nimlsp-v0_2_1".url = "path:./v0_2_1";
  inputs."nimlsp-v0_2_2".url = "path:./v0_2_2";
  inputs."nimlsp-v0_2_3".url = "path:./v0_2_3";
  inputs."nimlsp-v0_2_4".url = "path:./v0_2_4";
  inputs."nimlsp-v0_2_6".url = "path:./v0_2_6";
  inputs."nimlsp-v0_3_2".url = "path:./v0_3_2";
  inputs."nimlsp-v0_4_0".url = "path:./v0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}