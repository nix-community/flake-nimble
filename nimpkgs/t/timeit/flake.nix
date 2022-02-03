{
  description = ''measuring execution times written in nim.'';
  inputs."timeit-master".url = "path:./master";
  inputs."timeit-0_1_2".url = "path:./0_1_2";
  inputs."timeit-v0_1_0".url = "path:./v0_1_0";
  inputs."timeit-v0_1_1".url = "path:./v0_1_1";
  inputs."timeit-v0_1_6".url = "path:./v0_1_6";
  inputs."timeit-v0_1_8".url = "path:./v0_1_8";
  inputs."timeit-v0_2_0".url = "path:./v0_2_0";
  inputs."timeit-v0_2_1".url = "path:./v0_2_1";
  inputs."timeit-v0_2_2".url = "path:./v0_2_2";
  inputs."timeit-v0_2_4".url = "path:./v0_2_4";
  inputs."timeit-v0_2_6".url = "path:./v0_2_6";
  inputs."timeit-v0_2_8".url = "path:./v0_2_8";
  inputs."timeit-v0_3_0".url = "path:./v0_3_0";
  inputs."timeit-v0_3_2".url = "path:./v0_3_2";
  inputs."timeit-v0_3_4".url = "path:./v0_3_4";
  inputs."timeit-v0_3_6".url = "path:./v0_3_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}