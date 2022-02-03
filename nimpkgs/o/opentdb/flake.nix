{
  description = ''Wrapper around the open trivia db api'';
  inputs."opentdb-master".url = "path:./master";
  inputs."opentdb-1_1_0".url = "path:./1_1_0";
  inputs."opentdb-1_1_1".url = "path:./1_1_1";
  inputs."opentdb-v1_0_2".url = "path:./v1_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}