{
  description = ''Simple reST HTML generation with some extras.'';
  inputs."lazy_rest-master".url = "path:./master";
  inputs."lazy_rest-v0_2_0".url = "path:./v0_2_0";
  inputs."lazy_rest-v0_2_2".url = "path:./v0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}