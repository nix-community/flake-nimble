{
  description = ''Ping hosts using tcp packets'';
  inputs."tcping-master".url = "path:./master";
  inputs."tcping-v1_0_0".url = "path:./v1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}