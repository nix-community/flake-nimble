{
  description = ''A curses inspired simple cross-platform console library for Nim'';
  inputs."illwill-master".url = "path:./master";
  inputs."illwill-0_1_0".url = "path:./0_1_0";
  inputs."illwill-v0_1_0".url = "path:./v0_1_0";
  inputs."illwill-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}