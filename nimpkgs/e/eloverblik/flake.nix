{
  description = ''API for www.eloverblik.dk'';
  inputs."eloverblik-master".url = "path:./master";
  inputs."eloverblik-v0_0_1".url = "path:./v0_0_1";
  inputs."eloverblik-v0_0_2".url = "path:./v0_0_2";
  inputs."eloverblik-v0_0_4".url = "path:./v0_0_4";
  inputs."eloverblik-v0_0_5".url = "path:./v0_0_5";
  inputs."eloverblik-v0_0_6".url = "path:./v0_0_6";
  inputs."eloverblik-v0_0_7".url = "path:./v0_0_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}