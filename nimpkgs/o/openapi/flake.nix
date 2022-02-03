{
  description = ''OpenAPI Code Generator'';
  inputs."openapi-master".url = "path:./master";
  inputs."openapi-1_0_0".url = "path:./1_0_0";
  inputs."openapi-1_0_1".url = "path:./1_0_1";
  inputs."openapi-1_0_2".url = "path:./1_0_2";
  inputs."openapi-1_0_3".url = "path:./1_0_3";
  inputs."openapi-2_0_0".url = "path:./2_0_0";
  inputs."openapi-2_0_1".url = "path:./2_0_1";
  inputs."openapi-3_0_0".url = "path:./3_0_0";
  inputs."openapi-3_0_1".url = "path:./3_0_1";
  inputs."openapi-3_1_0".url = "path:./3_1_0";
  inputs."openapi-3_1_1".url = "path:./3_1_1";
  inputs."openapi-3_1_2".url = "path:./3_1_2";
  inputs."openapi-3_1_3".url = "path:./3_1_3";
  inputs."openapi-3_1_4".url = "path:./3_1_4";
  inputs."openapi-3_1_5".url = "path:./3_1_5";
  inputs."openapi-3_1_6".url = "path:./3_1_6";
  inputs."openapi-3_1_7".url = "path:./3_1_7";
  inputs."openapi-3_2_0".url = "path:./3_2_0";
  inputs."openapi-3_2_1".url = "path:./3_2_1";
  inputs."openapi-3_2_2".url = "path:./3_2_2";
  inputs."openapi-3_3_0".url = "path:./3_3_0";
  inputs."openapi-3_3_1".url = "path:./3_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}