{
  description = ''Morepretty - Does more than nimpretty.'';
  inputs."morepretty-master".url = "path:./master";
  inputs."morepretty-0_1_0".url = "path:./0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}