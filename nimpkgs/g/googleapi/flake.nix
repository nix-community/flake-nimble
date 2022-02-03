{
  description = ''Google API for nim'';
  inputs."googleapi-master".url = "path:./master";
  inputs."googleapi-0_1_0".url = "path:./0_1_0";
  inputs."googleapi-0_1_1".url = "path:./0_1_1";
  inputs."googleapi-0_1_2".url = "path:./0_1_2";
  inputs."googleapi-0_1_3".url = "path:./0_1_3";
  inputs."googleapi-0_1_4".url = "path:./0_1_4";
  inputs."googleapi-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}