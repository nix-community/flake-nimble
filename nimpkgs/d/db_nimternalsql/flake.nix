{
  description = ''An in-memory SQL database library'';
  inputs."db_nimternalsql-main".url = "path:./main";
  inputs."db_nimternalsql-v1_0_0".url = "path:./v1_0_0";
  inputs."db_nimternalsql-v1_1_0".url = "path:./v1_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}