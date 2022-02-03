{
  description = ''Boilerplate generator for Jester web framework'';
  inputs."gen-master".url = "path:./master";
  inputs."gen-0_2_0".url = "path:./0_2_0";
  inputs."gen-0_4_0".url = "path:./0_4_0";
  inputs."gen-0_6_0".url = "path:./0_6_0";
  inputs."gen-0_8_0".url = "path:./0_8_0";
  inputs."gen-1_0_0".url = "path:./1_0_0";
  inputs."gen-1_2_0".url = "path:./1_2_0";
  inputs."gen-1_4_0".url = "path:./1_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}