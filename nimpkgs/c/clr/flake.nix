{
  description = ''Get information about colors and convert them in the command line'';
  inputs."clr-master".url = "path:./master";
  inputs."clr-v0_1_0".url = "path:./v0_1_0";
  inputs."clr-v0_1_1".url = "path:./v0_1_1";
  inputs."clr-v0_1_2".url = "path:./v0_1_2";
  inputs."clr-v0_1_3".url = "path:./v0_1_3";
  inputs."clr-v1_0_0".url = "path:./v1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}