{
  description = ''Sequoia PGP wrapper for Nim'';
  inputs."sequoia-master".url = "path:./master";
  inputs."sequoia-0_1_0".url = "path:./0_1_0";
  inputs."sequoia-0_1_1".url = "path:./0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}