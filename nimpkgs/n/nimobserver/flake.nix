{
  description = ''An implementation of the observer pattern'';
  inputs."nimobserver-master".url = "path:./master";
  inputs."nimobserver-v0_1_0".url = "path:./v0_1_0";
  inputs."nimobserver-v0_1_1".url = "path:./v0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}