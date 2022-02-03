{
  description = ''Base32 library for Nim'';
  inputs."base32-master".url = "path:./master";
  inputs."base32-0_1_2".url = "path:./0_1_2";
  inputs."base32-0_1_3".url = "path:./0_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}