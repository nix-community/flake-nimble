{
  description = ''wave is a tiny WAV sound module'';
  inputs."wave-develop".url = "path:./develop";
  inputs."wave-master".url = "path:./master";
  inputs."wave-v1_0_0".url = "path:./v1_0_0";
  inputs."wave-v1_1_0".url = "path:./v1_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}