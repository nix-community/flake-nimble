{
  description = ''A nimble package which provides user-defined types, procedures, etc...'';
  inputs."oolib-develop".url = "path:./develop";
  inputs."oolib-main".url = "path:./main";
  inputs."oolib-0_1_0".url = "path:./0_1_0";
  inputs."oolib-0_2_0".url = "path:./0_2_0";
  inputs."oolib-0_2_1".url = "path:./0_2_1";
  inputs."oolib-0_2_2".url = "path:./0_2_2";
  inputs."oolib-0_3_0".url = "path:./0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}