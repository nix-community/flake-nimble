{
  description = ''PF_RING wrapper for Nim'';
  inputs."pfring-master".url = "path:./master";
  inputs."pfring-0_0_2".url = "path:./0_0_2";
  inputs."pfring-0_0_3".url = "path:./0_0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}