{
  description = ''Fuzzy search wrapper for Nim'';
  inputs."nimfuzzy-master".url = "path:./master";
  inputs."nimfuzzy-v0_1_0".url = "path:./v0_1_0";
  inputs."nimfuzzy-v0_1_2".url = "path:./v0_1_2";
  inputs."nimfuzzy-v0_1_3".url = "path:./v0_1_3";
  inputs."nimfuzzy-v0_1_4".url = "path:./v0_1_4";
  inputs."nimfuzzy-v0_1_5".url = "path:./v0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}