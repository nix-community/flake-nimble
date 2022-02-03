{
  description = ''Converts html to karax.'';
  inputs."html2karax-master".url = "path:./master";
  inputs."html2karax-v1_0_0".url = "path:./v1_0_0";
  inputs."html2karax-v1_0_1".url = "path:./v1_0_1";
  inputs."html2karax-v1_1_0".url = "path:./v1_1_0";
  inputs."html2karax-v1_1_1".url = "path:./v1_1_1";
  inputs."html2karax-v1_1_2".url = "path:./v1_1_2";
  inputs."html2karax-v1_1_3".url = "path:./v1_1_3";
  inputs."html2karax-v1_2_0".url = "path:./v1_2_0";
  inputs."html2karax-v1_2_1".url = "path:./v1_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}