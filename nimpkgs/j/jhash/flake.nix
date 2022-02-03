{
  description = ''Jenkins Hasher producing 32 bit digests'';
  inputs."jhash-master".url = "path:./master";
  inputs."jhash-v0_1_0".url = "path:./v0_1_0";
  inputs."jhash-v0_1_1".url = "path:./v0_1_1";
  inputs."jhash-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}