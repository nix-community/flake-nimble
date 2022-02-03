{
  description = ''A wrapper for the zip library'';
  inputs."zip-master".url = "path:./master";
  inputs."zip-0_3_1".url = "path:./0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}