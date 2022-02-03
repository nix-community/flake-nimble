{
  description = ''csvql.'';
  inputs."csvql-master".url = "path:./master";
  inputs."csvql-1_0".url = "path:./1_0";
  inputs."csvql-2_0_1".url = "path:./2_0_1";
  inputs."csvql-2_0v".url = "path:./2_0v";
  inputs."csvql-3_0".url = "path:./3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}