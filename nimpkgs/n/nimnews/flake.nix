{
  description = ''Immature Newsgroup NNTP server using SQLite as backend'';
  inputs."nimnews-master".url = "path:./master";
  inputs."nimnews-latest-master".url = "path:./latest-master";
  inputs."nimnews-v0_0_0".url = "path:./v0_0_0";
  inputs."nimnews-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}