{
  description = ''a simple test framework for nim.'';
  inputs."nimsuite-develop".url = "path:./develop";
  inputs."nimsuite-master".url = "path:./master";
  inputs."nimsuite-0_1_0".url = "path:./0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}