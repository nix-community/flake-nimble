{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
  inputs."triplets-master".url = "path:./master";
  inputs."triplets-0_0_1".url = "path:./0_0_1";
  inputs."triplets-0_0_2".url = "path:./0_0_2";
  inputs."triplets-0_0_3".url = "path:./0_0_3";
  inputs."triplets-0_0_4".url = "path:./0_0_4";
  inputs."triplets-0_0_5".url = "path:./0_0_5";
  inputs."triplets-0_0_6".url = "path:./0_0_6";
  inputs."triplets-0_0_7".url = "path:./0_0_7";
  inputs."triplets-0_1_0".url = "path:./0_1_0";
  inputs."triplets-0_1_1".url = "path:./0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}