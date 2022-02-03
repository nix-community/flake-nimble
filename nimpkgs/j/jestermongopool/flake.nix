{
  description = ''A Jester web plugin that gets a pooled MongoDB connection for each web query.'';
  inputs."jestermongopool-master".url = "path:./master";
  inputs."jestermongopool-v1_0_1".url = "path:./v1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}