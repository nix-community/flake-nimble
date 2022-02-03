{
  description = ''A Discord Bot & REST Library.'';
  inputs."dimscord-master".url = "path:./master";
  inputs."dimscord-v1_0_0".url = "path:./v1_0_0";
  inputs."dimscord-v1_0_1".url = "path:./v1_0_1";
  inputs."dimscord-v1_0_6".url = "path:./v1_0_6";
  inputs."dimscord-v1_0_7".url = "path:./v1_0_7";
  inputs."dimscord-v1_2_0".url = "path:./v1_2_0";
  inputs."dimscord-v1_2_1".url = "path:./v1_2_1";
  inputs."dimscord-v1_2_4".url = "path:./v1_2_4";
  inputs."dimscord-v1_2_5".url = "path:./v1_2_5";
  inputs."dimscord-v1_3_0".url = "path:./v1_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}