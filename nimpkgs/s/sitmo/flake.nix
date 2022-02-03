{
  description = ''Sitmo parallel random number generator in Nim'';
  inputs."sitmo-master".url = "path:./master";
  inputs."sitmo-v0_0_0".url = "path:./v0_0_0";
  inputs."sitmo-v0_0_1".url = "path:./v0_0_1";
  inputs."sitmo-v0_0_2".url = "path:./v0_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}