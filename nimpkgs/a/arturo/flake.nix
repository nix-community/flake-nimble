{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs."arturo-master".url = "path:./master";
  inputs."arturo-0_9_4".url = "path:./0_9_4";
  inputs."arturo-v0_3_1".url = "path:./v0_3_1";
  inputs."arturo-v0_3_3".url = "path:./v0_3_3";
  inputs."arturo-v0_3_4".url = "path:./v0_3_4";
  inputs."arturo-v0_3_5".url = "path:./v0_3_5";
  inputs."arturo-v0_3_6".url = "path:./v0_3_6";
  inputs."arturo-v0_3_7".url = "path:./v0_3_7";
  inputs."arturo-v0_3_8".url = "path:./v0_3_8";
  inputs."arturo-v0_3_9".url = "path:./v0_3_9";
  inputs."arturo-v0_4_0".url = "path:./v0_4_0";
  inputs."arturo-v0_9_4_6".url = "path:./v0_9_4_6";
  inputs."arturo-v0_9_5".url = "path:./v0_9_5";
  inputs."arturo-v0_9_6".url = "path:./v0_9_6";
  inputs."arturo-v0_9_6_1".url = "path:./v0_9_6_1";
  inputs."arturo-v0_9_6_5".url = "path:./v0_9_6_5";
  inputs."arturo-v0_9_7".url = "path:./v0_9_7";
  inputs."arturo-v0_9_7_2".url = "path:./v0_9_7_2";
  inputs."arturo-v0_9_7_4".url = "path:./v0_9_7_4";
  inputs."arturo-v0_9_75".url = "path:./v0_9_75";
  inputs."arturo-v0_9_76".url = "path:./v0_9_76";
  inputs."arturo-v0_9_77".url = "path:./v0_9_77";
  inputs."arturo-v0_9_78".url = "path:./v0_9_78";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}