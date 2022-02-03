{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
  inputs."nimPNG-master".url = "path:./master";
  inputs."nimPNG-0_2_7".url = "path:./0_2_7";
  inputs."nimPNG-0_3_0".url = "path:./0_3_0";
  inputs."nimPNG-v0_2_5".url = "path:./v0_2_5";
  inputs."nimPNG-v0_2_6".url = "path:./v0_2_6";
  inputs."nimPNG-v0_3_1".url = "path:./v0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}