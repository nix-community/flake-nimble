{
  description = ''Plotting tool using NiGui'';
  inputs."nmiline-master".url = "path:./master";
  inputs."nmiline-v1_0".url = "path:./v1_0";
  inputs."nmiline-v1_0_1".url = "path:./v1_0_1";
  inputs."nmiline-v1_1".url = "path:./v1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}