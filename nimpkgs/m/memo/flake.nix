{
  description = ''Memoize Nim functions'';
  inputs."memo-master".url = "path:./master";
  inputs."memo-0_1_0".url = "path:./0_1_0";
  inputs."memo-0_1_1".url = "path:./0_1_1";
  inputs."memo-0_1_2".url = "path:./0_1_2";
  inputs."memo-0_1_3".url = "path:./0_1_3";
  inputs."memo-0_2_0".url = "path:./0_2_0";
  inputs."memo-0_2_1".url = "path:./0_2_1";
  inputs."memo-0_2_2".url = "path:./0_2_2";
  inputs."memo-0_3_0".url = "path:./0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}