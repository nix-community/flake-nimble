{
  description = ''7z extraction for Nim'';
  inputs."nim7z-master".url = "path:./master";
  inputs."nim7z-v0_1_1".url = "path:./v0_1_1";
  inputs."nim7z-v0_1_2".url = "path:./v0_1_2";
  inputs."nim7z-v0_1_3".url = "path:./v0_1_3";
  inputs."nim7z-v0_1_4".url = "path:./v0_1_4";
  inputs."nim7z-v0_1_5".url = "path:./v0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}