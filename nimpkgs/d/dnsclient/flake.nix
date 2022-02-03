{
  description = ''Simple DNS Client & Library'';
  inputs."dnsclient-master".url = "path:./master";
  inputs."dnsclient-0_0_1".url = "path:./0_0_1";
  inputs."dnsclient-0_0_2".url = "path:./0_0_2";
  inputs."dnsclient-0_0_3".url = "path:./0_0_3";
  inputs."dnsclient-0_1_0".url = "path:./0_1_0";
  inputs."dnsclient-0_1_1".url = "path:./0_1_1";
  inputs."dnsclient-0_1_2".url = "path:./0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}