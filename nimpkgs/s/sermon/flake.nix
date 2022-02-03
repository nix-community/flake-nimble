{
  description = ''Monitor the state and memory of processes and URL response.'';
  inputs."sermon-master".url = "path:./master";
  inputs."sermon-v0_1_1".url = "path:./v0_1_1";
  inputs."sermon-v0_2_6".url = "path:./v0_2_6";
  inputs."sermon-v0_2_7".url = "path:./v0_2_7";
  inputs."sermon-v0_2_8".url = "path:./v0_2_8";
  inputs."sermon-v0_3_0".url = "path:./v0_3_0";
  inputs."sermon-v0_3_1".url = "path:./v0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}