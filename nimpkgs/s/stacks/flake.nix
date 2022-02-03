{
  description = ''Pure Nim stack implementation based on sequences.'';
  inputs."stacks-master".url = "path:./master";
  inputs."stacks-0_4_0".url = "path:./0_4_0";
  inputs."stacks-0_4_1".url = "path:./0_4_1";
  inputs."stacks-0_4_2".url = "path:./0_4_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}