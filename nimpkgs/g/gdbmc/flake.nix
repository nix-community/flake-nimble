{
  description = ''This library is a wrapper to C GDBM library'';
  inputs."gdbmc-master".url = "path:./master";
  inputs."gdbmc-v0_9_0".url = "path:./v0_9_0";
  inputs."gdbmc-v0_9_1".url = "path:./v0_9_1";
  inputs."gdbmc-v0_9_9".url = "path:./v0_9_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}