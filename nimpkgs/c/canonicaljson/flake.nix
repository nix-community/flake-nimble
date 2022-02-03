{
  description = ''Canonical JSON according to RFC8785'';
  inputs."canonicaljson-master".url = "path:./master";
  inputs."canonicaljson-1_0_0".url = "path:./1_0_0";
  inputs."canonicaljson-1_0_1".url = "path:./1_0_1";
  inputs."canonicaljson-1_0_2".url = "path:./1_0_2";
  inputs."canonicaljson-1_1_0".url = "path:./1_1_0";
  inputs."canonicaljson-1_1_1".url = "path:./1_1_1";
  inputs."canonicaljson-1_1_2".url = "path:./1_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}