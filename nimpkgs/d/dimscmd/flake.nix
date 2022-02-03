{
  description = ''A command handler for the dimscord discord library'';
  inputs."dimscmd-master".url = "path:./master";
  inputs."dimscmd-0_2_0".url = "path:./0_2_0";
  inputs."dimscmd-0_2_1".url = "path:./0_2_1";
  inputs."dimscmd-1_0_0".url = "path:./1_0_0";
  inputs."dimscmd-1_1_0".url = "path:./1_1_0";
  inputs."dimscmd-1_1_1".url = "path:./1_1_1";
  inputs."dimscmd-1_1_2".url = "path:./1_1_2";
  inputs."dimscmd-1_2_0".url = "path:./1_2_0";
  inputs."dimscmd-1_2_1".url = "path:./1_2_1";
  inputs."dimscmd-1_2_2".url = "path:./1_2_2";
  inputs."dimscmd-1_3_0".url = "path:./1_3_0";
  inputs."dimscmd-1_3_1".url = "path:./1_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}