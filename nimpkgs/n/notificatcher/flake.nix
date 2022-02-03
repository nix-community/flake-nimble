{
  description = ''Small program to grab notifications from freedesktop and output them according to a format'';
  inputs."notificatcher-master".url = "path:./master";
  inputs."notificatcher-v0_2_0".url = "path:./v0_2_0";
  inputs."notificatcher-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}