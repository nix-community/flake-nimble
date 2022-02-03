{
  description = ''128-bit integers'';
  inputs."nint128-main".url = "path:./main";
  inputs."nint128-v0_1_0".url = "path:./v0_1_0";
  inputs."nint128-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}