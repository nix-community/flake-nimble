{
  description = ''Bindings for zstd'';
  inputs."zstd-develop".url = "path:./develop";
  inputs."zstd-master".url = "path:./master";
  inputs."zstd-v0_2".url = "path:./v0_2";
  inputs."zstd-v0_3".url = "path:./v0_3";
  inputs."zstd-v0_4".url = "path:./v0_4";
  inputs."zstd-v0_5".url = "path:./v0_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}