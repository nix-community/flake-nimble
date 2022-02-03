{
  description = ''Last.FM API bindings'';
  inputs."lastfm-master".url = "path:./master";
  inputs."lastfm-0_6_0".url = "path:./0_6_0";
  inputs."lastfm-0_7_0".url = "path:./0_7_0";
  inputs."lastfm-0_8_0".url = "path:./0_8_0";
  inputs."lastfm-0_8_1".url = "path:./0_8_1";
  inputs."lastfm-0_8_2".url = "path:./0_8_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}