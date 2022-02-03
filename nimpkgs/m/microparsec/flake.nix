{
  description = ''A performant Nim parsing library built for humans.'';
  inputs."microparsec-master".url = "path:./master";
  inputs."microparsec-v0_1-alpha".url = "path:./v0_1-alpha";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}