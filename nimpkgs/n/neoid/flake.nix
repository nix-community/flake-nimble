{
  description = ''Nim implementation of NanoID, a tiny, secure, URL-friendly, unique string ID generator. Works with Linux and Windows!'';
  inputs."neoid-master".url = "path:./master";
  inputs."neoid-0_3_0".url = "path:./0_3_0";
  inputs."neoid-0_3_1".url = "path:./0_3_1";
  inputs."neoid-0_3_2".url = "path:./0_3_2";
  inputs."neoid-v0_1_0".url = "path:./v0_1_0";
  inputs."neoid-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}