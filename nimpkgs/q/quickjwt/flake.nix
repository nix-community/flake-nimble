{
  description = ''JSON Web Tokens for Nim'';
  inputs."quickjwt-master".url = "path:./master";
  inputs."quickjwt-0_0_1".url = "path:./0_0_1";
  inputs."quickjwt-0_2_1".url = "path:./0_2_1";
  inputs."quickjwt-v0_2_1".url = "path:./v0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}