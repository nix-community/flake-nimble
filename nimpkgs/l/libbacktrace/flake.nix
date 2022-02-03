{
  description = ''Nim wrapper for libbacktrace'';
  inputs."libbacktrace-master".url = "path:./master";
  inputs."libbacktrace-v0_0_2".url = "path:./v0_0_2";
  inputs."libbacktrace-v0_0_3".url = "path:./v0_0_3";
  inputs."libbacktrace-v0_0_4".url = "path:./v0_0_4";
  inputs."libbacktrace-v0_0_5".url = "path:./v0_0_5";
  inputs."libbacktrace-v0_0_6".url = "path:./v0_0_6";
  inputs."libbacktrace-v0_0_7".url = "path:./v0_0_7";
  inputs."libbacktrace-v0_0_8".url = "path:./v0_0_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}