{
  description = ''A wrapper of the ORX 2.5D game engine'';
  inputs."norx-master".url = "path:./master";
  inputs."norx-0_4_2".url = "path:./0_4_2";
  inputs."norx-0_4_3".url = "path:./0_4_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}