{
  description = ''MongoDb pooled driver'';
  inputs."mongopool-master".url = "path:./master";
  inputs."mongopool-v1_0_0".url = "path:./v1_0_0";
  inputs."mongopool-v1_0_1".url = "path:./v1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}