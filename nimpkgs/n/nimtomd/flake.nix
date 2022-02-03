{
  description = ''Convert a Nim file or string to Markdown'';
  inputs."nimtomd-master".url = "path:./master";
  inputs."nimtomd-v0_2_0".url = "path:./v0_2_0";
  inputs."nimtomd-v0_2_1".url = "path:./v0_2_1";
  inputs."nimtomd-v0_3_1".url = "path:./v0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}