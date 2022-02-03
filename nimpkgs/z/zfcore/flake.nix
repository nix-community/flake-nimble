{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';
  inputs."zfcore-master".url = "path:./master";
  inputs."zfcore-1_0_29".url = "path:./1_0_29";
  inputs."zfcore-1_0_30".url = "path:./1_0_30";
  inputs."zfcore-1_1_1".url = "path:./1_1_1";
  inputs."zfcore-1_1_2".url = "path:./1_1_2";
  inputs."zfcore-V1_0_11".url = "path:./V1_0_11";
  inputs."zfcore-v1_0_1".url = "path:./v1_0_1";
  inputs."zfcore-v1_0_15".url = "path:./v1_0_15";
  inputs."zfcore-v1_0_16".url = "path:./v1_0_16";
  inputs."zfcore-v1_0_18".url = "path:./v1_0_18";
  inputs."zfcore-v1_0_2".url = "path:./v1_0_2";
  inputs."zfcore-v1_0_3".url = "path:./v1_0_3";
  inputs."zfcore-v1_0_4".url = "path:./v1_0_4";
  inputs."zfcore-v1_0_6".url = "path:./v1_0_6";
  inputs."zfcore-v1_0_6-stable".url = "path:./v1_0_6-stable";
  inputs."zfcore-v1_0_7".url = "path:./v1_0_7";
  inputs."zfcore-v1_0_8".url = "path:./v1_0_8";
  inputs."zfcore-v1_0_8-1".url = "path:./v1_0_8-1";
  inputs."zfcore-v1_1_5".url = "path:./v1_1_5";
  inputs."zfcore-v1_1_6".url = "path:./v1_1_6";
  inputs."zfcore-v1_1_7".url = "path:./v1_1_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}