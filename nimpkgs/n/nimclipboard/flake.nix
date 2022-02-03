{
  description = ''Nim wrapper for libclipboard'';
  inputs."nimclipboard-master".url = "path:./master";
  inputs."nimclipboard-v0_1_0".url = "path:./v0_1_0";
  inputs."nimclipboard-v0_1_1".url = "path:./v0_1_1";
  inputs."nimclipboard-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}