{
  description = ''xxhash wrapper for Nim'';
  inputs."xxhash-master".url = "path:./master";
  inputs."xxhash-0_7_0".url = "path:./0_7_0";
  inputs."xxhash-0_7_1".url = "path:./0_7_1";
  inputs."xxhash-0_8_0".url = "path:./0_8_0";
  inputs."xxhash-0_9_0".url = "path:./0_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}