{
  description = ''Nim module/thread initialisation ordering library'';
  inputs."moduleinit-master".url = "path:./master";
  inputs."moduleinit-v0_1_0".url = "path:./v0_1_0";
  inputs."moduleinit-v0_2_0".url = "path:./v0_2_0";
  inputs."moduleinit-v0_3_0".url = "path:./v0_3_0";
  inputs."moduleinit-v0_4_0".url = "path:./v0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}