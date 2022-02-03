{
  description = ''A simple progress bar for Nim.'';
  inputs."progress-master".url = "path:./master";
  inputs."progress-v1_0_0".url = "path:./v1_0_0";
  inputs."progress-v1_0_1".url = "path:./v1_0_1";
  inputs."progress-v1_0_2".url = "path:./v1_0_2";
  inputs."progress-v1_1_0".url = "path:./v1_1_0";
  inputs."progress-v1_1_1".url = "path:./v1_1_1";
  inputs."progress-v1_1_3".url = "path:./v1_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}