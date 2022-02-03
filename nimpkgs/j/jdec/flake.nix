{
  description = ''Flexible JSON manshal/unmarshal library for nim'';
  inputs."jdec-develop".url = "path:./develop";
  inputs."jdec-master".url = "path:./master";
  inputs."jdec-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}