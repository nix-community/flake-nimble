{
  description = ''Text template processor, basic capabilities'';
  inputs."tmplpro-master".url = "path:./master";
  inputs."tmplpro-unstable".url = "path:./unstable";
  inputs."tmplpro-v0_1_0".url = "path:./v0_1_0";
  inputs."tmplpro-v0_1_1".url = "path:./v0_1_1";
  inputs."tmplpro-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}