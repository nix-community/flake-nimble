{
  description = ''High level xml library for Nim'';
  inputs."xmltools-master".url = "path:./master";
  inputs."xmltools-v0_0_1".url = "path:./v0_0_1";
  inputs."xmltools-v0_0_2".url = "path:./v0_0_2";
  inputs."xmltools-v0_0_3".url = "path:./v0_0_3";
  inputs."xmltools-v0_1_0".url = "path:./v0_1_0";
  inputs."xmltools-v0_1_1".url = "path:./v0_1_1";
  inputs."xmltools-v0_1_2".url = "path:./v0_1_2";
  inputs."xmltools-v0_1_3".url = "path:./v0_1_3";
  inputs."xmltools-v0_1_4".url = "path:./v0_1_4";
  inputs."xmltools-v0_1_5".url = "path:./v0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}