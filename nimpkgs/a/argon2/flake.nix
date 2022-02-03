{
  description = ''A nim wrapper for the Argon2 hashing library'';
  inputs."argon2-master".url = "path:./master";
  inputs."argon2-v1_0_0".url = "path:./v1_0_0";
  inputs."argon2-v1_0_1".url = "path:./v1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}