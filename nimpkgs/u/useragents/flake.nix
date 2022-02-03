{
  description = ''User Agent parser for nim.'';
  inputs."useragents-master".url = "path:./master";
  inputs."useragents-0_1_1".url = "path:./0_1_1";
  inputs."useragents-v0_1_1".url = "path:./v0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}