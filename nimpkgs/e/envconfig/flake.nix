{
  description = ''envconfig provides a function to get config objects from environment variables.'';
  inputs."envconfig-master".url = "path:./master";
  inputs."envconfig-v1_0_0".url = "path:./v1_0_0";
  inputs."envconfig-v1_0_1".url = "path:./v1_0_1";
  inputs."envconfig-v1_0_2".url = "path:./v1_0_2";
  inputs."envconfig-v1_1_0".url = "path:./v1_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}