{
  description = ''Pretty-printer'';
  inputs."hpprint-master".url = "path:./master";
  inputs."hpprint-v0_2_10".url = "path:./v0_2_10";
  inputs."hpprint-v0_2_12".url = "path:./v0_2_12";
  inputs."hpprint-v0_2_13".url = "path:./v0_2_13";
  inputs."hpprint-v0_2_14".url = "path:./v0_2_14";
  inputs."hpprint-v0_2_15".url = "path:./v0_2_15";
  inputs."hpprint-v0_2_16".url = "path:./v0_2_16";
  inputs."hpprint-v0_2_17".url = "path:./v0_2_17";
  inputs."hpprint-v0_2_18".url = "path:./v0_2_18";
  inputs."hpprint-v0_2_4".url = "path:./v0_2_4";
  inputs."hpprint-v0_2_5".url = "path:./v0_2_5";
  inputs."hpprint-v0_2_6".url = "path:./v0_2_6";
  inputs."hpprint-v0_2_7".url = "path:./v0_2_7";
  inputs."hpprint-v0_2_8".url = "path:./v0_2_8";
  inputs."hpprint-v0_2_9".url = "path:./v0_2_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}