{
  description = ''Utilities for use with IP. It has functions for IPv4, IPv6 and CIDR.'';
  inputs."iputils-master".url = "path:./master";
  inputs."iputils-v0_1_0".url = "path:./v0_1_0";
  inputs."iputils-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}