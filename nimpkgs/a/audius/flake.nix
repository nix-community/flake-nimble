{
  description = ''Audius is a simple client library for interacting with the Audius free API.'';
  inputs."audius-master".url = "path:./master";
  inputs."audius-v0_1_0".url = "path:./v0_1_0";
  inputs."audius-v0_1_1".url = "path:./v0_1_1";
  inputs."audius-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}