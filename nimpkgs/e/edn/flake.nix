{
  description = ''EDN and Clojure parser'';
  inputs."edn-master".url = "path:./master";
  inputs."edn-0_1_0".url = "path:./0_1_0";
  inputs."edn-0_1_1".url = "path:./0_1_1";
  inputs."edn-0_2_0".url = "path:./0_2_0";
  inputs."edn-0_2_1".url = "path:./0_2_1";
  inputs."edn-0_2_2".url = "path:./0_2_2";
  inputs."edn-0_2_3".url = "path:./0_2_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}