{
  description = ''nim.uri3 is a Nim module that provides improved way for working with URIs. It is based on the uri module in the Nim standard library and fork from nim-uri2'';
  inputs."uri3-master".url = "path:./master";
  inputs."uri3-0_1_4".url = "path:./0_1_4";
  inputs."uri3-v0_1_1".url = "path:./v0_1_1";
  inputs."uri3-v0_1_3".url = "path:./v0_1_3";
  inputs."uri3-v0_1_4".url = "path:./v0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}