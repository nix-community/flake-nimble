{
  description = ''High precision and high performance task scheduler '';
  inputs."taskqueue-master".url = "path:./master";
  inputs."taskqueue-0_1_0".url = "path:./0_1_0";
  inputs."taskqueue-0_1_1".url = "path:./0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}