{
  description = ''A simple library to generate random data, using the system's PRNG.'';
  inputs."sysrandom-master".url = "path:./master";
  inputs."sysrandom-v0_1_0".url = "path:./v0_1_0";
  inputs."sysrandom-v1_0_0".url = "path:./v1_0_0";
  inputs."sysrandom-v1_1_0".url = "path:./v1_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}