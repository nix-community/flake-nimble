{
  description = ''Cross platform system information.'';
  inputs."sysinfo-master".url = "path:./master";
  inputs."sysinfo-v0_1_0".url = "path:./v0_1_0";
  inputs."sysinfo-v0_2_1".url = "path:./v0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}