{
  description = ''Hashing/Digest collection in pure Nim'';
  inputs."ShimSham-master".url = "path:./master";
  inputs."shimsham-0_0_1".url = "path:./0_0_1";
  inputs."shimsham-0_3_2".url = "path:./0_3_2";
  inputs."ShimSham-0_3_3".url = "path:./0_3_3";
  inputs."ShimSham-0_3_4".url = "path:./0_3_4";
  inputs."shimsham-v0_1_0-alpha".url = "path:./v0_1_0-alpha";
  inputs."shimsham-v0_2_0-alpha".url = "path:./v0_2_0-alpha";
  inputs."shimsham-v0_3_1-alpha".url = "path:./v0_3_1-alpha";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}