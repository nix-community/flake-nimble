{
  description = ''Fast and simple calculation of polygenic scores'';
  inputs."nimpress-develop".url = "path:./develop";
  inputs."nimpress-master".url = "path:./master";
  inputs."nimpress-v1_0_0".url = "path:./v1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}