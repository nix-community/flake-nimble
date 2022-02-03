{
  description = ''Websockets wrapper for nim js backend.'';
  inputs."jswebsockets-master".url = "path:./master";
  inputs."jswebsockets-0_1_2".url = "path:./0_1_2";
  inputs."jswebsockets-0_1_3".url = "path:./0_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}