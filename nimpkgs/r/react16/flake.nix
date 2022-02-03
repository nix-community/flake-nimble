{
  description = ''React.js 16.x bindings for Nim'';
  inputs."react16-master".url = "path:./master";
  inputs."react16-0_3_1".url = "path:./0_3_1";
  inputs."react16-0_3_2".url = "path:./0_3_2";
  inputs."react16-0_3_3".url = "path:./0_3_3";
  inputs."react16-0_3_4".url = "path:./0_3_4";
  inputs."react16-0_3_5".url = "path:./0_3_5";
  inputs."react16-0_3_6".url = "path:./0_3_6";
  inputs."react16-v0_3_7".url = "path:./v0_3_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}