{
  description = ''Bindings to libopusenc'';
  inputs."opusenc-master".url = "path:./master";
  inputs."opusenc-v0_1_0".url = "path:./v0_1_0";
  inputs."opusenc-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}