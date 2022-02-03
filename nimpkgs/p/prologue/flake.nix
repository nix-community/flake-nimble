{
  description = ''Another micro web framework.'';
  
  inputs."prologue-0_4_4".url = "path:./0_4_4";
  inputs."prologue-0_4_6".url = "path:./0_4_6";
  inputs."prologue-v_0_4_8".url = "path:./v_0_4_8";
  inputs."prologue-v0_1_6".url = "path:./v0_1_6";
  inputs."prologue-v0_1_8".url = "path:./v0_1_8";
  inputs."prologue-v0_2_0".url = "path:./v0_2_0";
  inputs."prologue-v0_2_2".url = "path:./v0_2_2";
  inputs."prologue-v0_2_4".url = "path:./v0_2_4";
  inputs."prologue-v0_2_6".url = "path:./v0_2_6";
  inputs."prologue-v0_2_8".url = "path:./v0_2_8";
  inputs."prologue-v0_3_0".url = "path:./v0_3_0";
  inputs."prologue-v0_3_2".url = "path:./v0_3_2";
  inputs."prologue-v0_3_4".url = "path:./v0_3_4";
  inputs."prologue-v0_3_6".url = "path:./v0_3_6";
  inputs."prologue-v0_4_0".url = "path:./v0_4_0";
  inputs."prologue-v0_4_2".url = "path:./v0_4_2";
  inputs."prologue-v0_4_8".url = "path:./v0_4_8";
  inputs."prologue-v0_5_0".url = "path:./v0_5_0";
  inputs."prologue-v0_5_2".url = "path:./v0_5_2";
  inputs."prologue-v0_5_4".url = "path:./v0_5_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}