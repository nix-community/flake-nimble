{
  description = ''Nim's official stdlib extension'';
  inputs."fusion-master".url = "path:./master";
  inputs."fusion-v1_0".url = "path:./v1_0";
  inputs."fusion-v1_1".url = "path:./v1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}