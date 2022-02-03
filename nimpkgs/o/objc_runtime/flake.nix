{
  description = ''objective-c runtime bindings'';
  inputs."objc_runtime-master".url = "path:./master";
  inputs."objc_runtime-v0_1_1".url = "path:./v0_1_1";
  inputs."objc_runtime-v0_1_2".url = "path:./v0_1_2";
  inputs."objc_runtime-v0_1_3".url = "path:./v0_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}