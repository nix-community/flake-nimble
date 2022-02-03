{
  description = ''Selectors extension.'';
  inputs."ioselectors-master".url = "path:./master";
  inputs."ioselectors-v0_1_0".url = "path:./v0_1_0";
  inputs."ioselectors-v0_1_2".url = "path:./v0_1_2";
  inputs."ioselectors-v0_1_4".url = "path:./v0_1_4";
  inputs."ioselectors-v0_1_6".url = "path:./v0_1_6";
  inputs."ioselectors-v0_1_8".url = "path:./v0_1_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}