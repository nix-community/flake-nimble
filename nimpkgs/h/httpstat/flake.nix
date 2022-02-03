{
  description = ''curl statistics made simple '';
  inputs."httpstat-develop".url = "path:./develop";
  inputs."httpstat-master".url = "path:./master";
  inputs."httpstat-v0_1_0".url = "path:./v0_1_0";
  inputs."httpstat-v0_1_1".url = "path:./v0_1_1";
  inputs."httpstat-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}