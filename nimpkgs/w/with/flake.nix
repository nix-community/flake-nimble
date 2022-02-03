{
  description = ''Simple 'with' macro for Nim'';
  inputs."with-master".url = "path:./master";
  inputs."with-0_4_0".url = "path:./0_4_0";
  inputs."with-v0_1_0".url = "path:./v0_1_0";
  inputs."with-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}