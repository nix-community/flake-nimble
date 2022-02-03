{
  description = ''make-like for Nim. Describe your builds as tasks!'';
  inputs."nake-master".url = "path:./master";
  inputs."nake-1_9".url = "path:./1_9";
  inputs."nake-1_9_1".url = "path:./1_9_1";
  inputs."nake-1_9_2".url = "path:./1_9_2";
  inputs."nake-1_9_3".url = "path:./1_9_3";
  inputs."nake-1_9_4".url = "path:./1_9_4";
  inputs."nake-v1_0".url = "path:./v1_0";
  inputs."nake-v1_1".url = "path:./v1_1";
  inputs."nake-v1_2".url = "path:./v1_2";
  inputs."nake-v1_4".url = "path:./v1_4";
  inputs."nake-v1_6".url = "path:./v1_6";
  inputs."nake-v1_8".url = "path:./v1_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}