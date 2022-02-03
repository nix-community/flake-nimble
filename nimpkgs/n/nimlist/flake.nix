{
  description = ''View nim packages in your browser.'';
  inputs."nimlist-master".url = "path:./master";
  inputs."nimlist-v0_1_1".url = "path:./v0_1_1";
  inputs."nimlist-v0_1_2".url = "path:./v0_1_2";
  inputs."nimlist-v0_1_3".url = "path:./v0_1_3";
  inputs."nimlist-v0_1_4".url = "path:./v0_1_4";
  inputs."nimlist-v0_1_5".url = "path:./v0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}