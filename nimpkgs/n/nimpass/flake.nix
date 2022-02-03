{
  description = ''quickly generate cryptographically secure passwords and phrases'';
  inputs."nimpass-master".url = "path:./master";
  inputs."nimpass-v0_0_1".url = "path:./v0_0_1";
  inputs."nimpass-v0_0_2".url = "path:./v0_0_2";
  inputs."nimpass-v0_0_3".url = "path:./v0_0_3";
  inputs."nimpass-v0_0_4".url = "path:./v0_0_4";
  inputs."nimpass-v0_0_5".url = "path:./v0_0_5";
  inputs."nimpass-v0_0_6".url = "path:./v0_0_6";
  inputs."nimpass-v0_0_7".url = "path:./v0_0_7";
  inputs."nimpass-v0_0_8".url = "path:./v0_0_8";
  inputs."nimpass-v0_0_9".url = "path:./v0_0_9";
  inputs."nimpass-v0_1_0".url = "path:./v0_1_0";
  inputs."nimpass-v0_1_1".url = "path:./v0_1_1";
  inputs."nimpass-v0_2_0".url = "path:./v0_2_0";
  inputs."nimpass-v1_2_1".url = "path:./v1_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}