{
  description = ''mConnect Standardised Response Package'';
  inputs."mcresponse-master".url = "path:./master";
  inputs."mcresponse-v0_1_1".url = "path:./v0_1_1";
  inputs."mcresponse-v0_2_0".url = "path:./v0_2_0";
  inputs."mcresponse-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}