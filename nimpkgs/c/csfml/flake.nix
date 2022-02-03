{
  description = ''Bindings for Simple and Fast Multimedia Library (through CSFML)'';
  inputs."csfml-master".url = "path:./master";
  inputs."csfml-v2_1_0".url = "path:./v2_1_0";
  inputs."csfml-v2_1_1".url = "path:./v2_1_1";
  inputs."csfml-v2_1_2".url = "path:./v2_1_2";
  inputs."csfml-v2_1_3".url = "path:./v2_1_3";
  inputs."csfml-v2_2_0".url = "path:./v2_2_0";
  inputs."csfml-v2_3_0".url = "path:./v2_3_0";
  inputs."csfml-v2_3_1".url = "path:./v2_3_1";
  inputs."csfml-v2_4_0".url = "path:./v2_4_0";
  inputs."csfml-v2_5_0".url = "path:./v2_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}