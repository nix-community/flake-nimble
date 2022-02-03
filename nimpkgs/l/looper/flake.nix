{
  description = ''for loop macros'';
  inputs."looper-master".url = "path:./master";
  inputs."looper-v0_2_0".url = "path:./v0_2_0";
  inputs."looper-v0_4_0".url = "path:./v0_4_0";
  inputs."looper-v0_5_0".url = "path:./v0_5_0";
  inputs."looper-v0_6_0".url = "path:./v0_6_0";
  inputs."looper-v0_7_0".url = "path:./v0_7_0";
  inputs."looper-v0_8_0".url = "path:./v0_8_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}