{
  description = ''UUIDs in pure Nim'';
  inputs."uuid4-main".url = "path:./main";
  inputs."uuid4-v0_9_0".url = "path:./v0_9_0";
  inputs."uuid4-v0_9_1".url = "path:./v0_9_1";
  inputs."uuid4-v0_9_2".url = "path:./v0_9_2";
  inputs."uuid4-v0_9_3".url = "path:./v0_9_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}