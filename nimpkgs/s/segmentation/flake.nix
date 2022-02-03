{
  description = ''Unicode text segmentation tr29'';
  inputs."segmentation-master".url = "path:./master";
  inputs."segmentation-v0_0_1".url = "path:./v0_0_1";
  inputs."segmentation-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}