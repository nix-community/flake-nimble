{
  description = ''rect is a command to crop/paste rectangle text.'';
  inputs."rect-master".url = "path:./master";
  inputs."rect-v1_0_0".url = "path:./v1_0_0";
  inputs."rect-v1_0_1".url = "path:./v1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}