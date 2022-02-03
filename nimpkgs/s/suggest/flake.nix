{
  description = ''mmap-persistent SymSpell spell checking algorithm'';
  inputs."suggest-master".url = "path:./master";
  inputs."suggest-v1_0".url = "path:./v1_0";
  inputs."suggest-v1_1".url = "path:./v1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}