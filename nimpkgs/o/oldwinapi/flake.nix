{
  description = ''Old Win API library for Nim'';
  inputs."oldwinapi-master".url = "path:./master";
  inputs."oldwinapi-v2_1_0".url = "path:./v2_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}