{
  description = ''pnm is library for PNM (Portable AnyMap).'';
  inputs."pnm-develop".url = "path:./develop";
  inputs."pnm-master".url = "path:./master";
  inputs."pnm-v2_0_0".url = "path:./v2_0_0";
  inputs."pnm-v2_0_1".url = "path:./v2_0_1";
  inputs."pnm-v2_1_0".url = "path:./v2_1_0";
  inputs."pnm-v2_1_1".url = "path:./v2_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}