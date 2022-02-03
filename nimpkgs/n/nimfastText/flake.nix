{
  description = ''fastText wrapper for Nim'';
  inputs."nimfastText-master".url = "path:./master";
  inputs."nimfastText-v0_1_0".url = "path:./v0_1_0";
  inputs."nimfastText-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}