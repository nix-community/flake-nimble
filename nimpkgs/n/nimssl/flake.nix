{
  description = ''OpenSSL wrapper for Nim'';
  inputs."nimssl-master".url = "path:./master";
  inputs."nimssl-v0_1_0".url = "path:./v0_1_0";
  inputs."nimssl-v0_1_2".url = "path:./v0_1_2";
  inputs."nimssl-v0_1_3".url = "path:./v0_1_3";
  inputs."nimssl-v0_1_4".url = "path:./v0_1_4";
  inputs."nimssl-v0_1_5".url = "path:./v0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}