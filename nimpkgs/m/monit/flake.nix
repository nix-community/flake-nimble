{
  description = ''A simple task runner. Run tasks and watch file changes with custom paths.'';
  inputs."monit-master".url = "path:./master";
  inputs."monit-1_0_0".url = "path:./1_0_0";
  inputs."monit-1_1_0".url = "path:./1_1_0";
  inputs."monit-v1_2_0".url = "path:./v1_2_0";
  inputs."monit-v1_2_1".url = "path:./v1_2_1";
  inputs."monit-v1_2_2".url = "path:./v1_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}