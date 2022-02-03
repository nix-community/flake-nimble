{
  description = ''A simple PubSub framework using STOMP.'';
  inputs."cittadino-master".url = "path:./master";
  inputs."cittadino-0_1_0".url = "path:./0_1_0";
  inputs."cittadino-0_1_1".url = "path:./0_1_1";
  inputs."cittadino-0_1_2".url = "path:./0_1_2";
  inputs."cittadino-0_1_4".url = "path:./0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}