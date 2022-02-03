{
  description = ''Humanize elapsed time'';
  inputs."eternity-master".url = "path:./master";
  inputs."eternity-v0_2".url = "path:./v0_2";
  inputs."eternity-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}