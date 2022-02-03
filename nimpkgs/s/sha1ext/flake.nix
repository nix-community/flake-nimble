{
  description = ''std / sha1 extension'';
  inputs."sha1ext-develop".url = "path:./develop";
  inputs."sha1ext-master".url = "path:./master";
  inputs."sha1ext-v0_1".url = "path:./v0_1";
  inputs."sha1ext-v0_1_1".url = "path:./v0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}