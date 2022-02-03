{
  description = ''Implementation of Unix crypt with support for Crypt-MD5, Crypt-SHA256 and Crypt-SHA512'';
  inputs."nimcrypt-main".url = "path:./main";
  inputs."nimcrypt-v0_0_6".url = "path:./v0_0_6";
  inputs."nimcrypt-v0_0_7".url = "path:./v0_0_7";
  inputs."nimcrypt-v0_0_8".url = "path:./v0_0_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}