{
  description = ''Simple OT wrapper'';
  inputs."simpleot-master".url = "path:./master";
  inputs."simpleot-0_4_1".url = "path:./0_4_1";
  inputs."simpleot-v0_4_2".url = "path:./v0_4_2";
  inputs."simpleot-v0_5_0".url = "path:./v0_5_0";
  inputs."simpleot-v0_5_1".url = "path:./v0_5_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}