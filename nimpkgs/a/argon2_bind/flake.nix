{
  description = ''Bindings to the high-level Argon2 C API'';
  inputs."argon2_bind-develop".url = "path:./develop";
  inputs."argon2_bind-master".url = "path:./master";
  inputs."argon2_bind-v0_1_0".url = "path:./v0_1_0";
  inputs."argon2_bind-v0_1_1".url = "path:./v0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}