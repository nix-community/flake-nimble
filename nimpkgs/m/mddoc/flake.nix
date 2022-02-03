{
  description = ''Generated Nim's API docs in markdown for github's README.md files. Great for small libraries with simple APIs.'';
  inputs."mddoc-master".url = "path:./master";
  inputs."mddoc-0_0_1".url = "path:./0_0_1";
  inputs."mddoc-0_0_2".url = "path:./0_0_2";
  inputs."mddoc-0_0_3".url = "path:./0_0_3";
  inputs."mddoc-0_0_4".url = "path:./0_0_4";
  inputs."mddoc-v0_0_4".url = "path:./v0_0_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}