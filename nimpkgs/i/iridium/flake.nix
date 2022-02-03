{
  description = ''The International Standard for country codes and codes for their subdivisions on Nim (ISO-3166)'';
  inputs."iridium-master".url = "path:./master";
  inputs."iridium-v0_1_0".url = "path:./v0_1_0";
  inputs."iridium-v0_2_0".url = "path:./v0_2_0";
  inputs."iridium-v0_3_0".url = "path:./v0_3_0";
  inputs."iridium-v0_3_1".url = "path:./v0_3_1";
  inputs."iridium-v0_3_2".url = "path:./v0_3_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}