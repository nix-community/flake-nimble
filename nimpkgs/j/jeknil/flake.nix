{
  description = ''A blog post generator for people with priorities.'';
  inputs."jeknil-master".url = "path:./master";
  inputs."jeknil-v0_1_0".url = "path:./v0_1_0";
  inputs."jeknil-v0_1_1".url = "path:./v0_1_1";
  inputs."jeknil-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}