{
  description = ''Bindings for picohttpparser.'';
  inputs."picohttpparser-master".url = "path:./master";
  inputs."picohttpparser-0_10_0".url = "path:./0_10_0";
  inputs."picohttpparser-0_9_0".url = "path:./0_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}