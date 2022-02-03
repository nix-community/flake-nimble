{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
  inputs."hastysite-master".url = "path:./master";
  inputs."hastysite-0_1_0".url = "path:./0_1_0";
  inputs."hastysite-v1_0_0".url = "path:./v1_0_0";
  inputs."hastysite-v1_0_1".url = "path:./v1_0_1";
  inputs."hastysite-v1_1_0".url = "path:./v1_1_0";
  inputs."hastysite-v1_2_0".url = "path:./v1_2_0";
  inputs."hastysite-v1_2_1".url = "path:./v1_2_1";
  inputs."hastysite-v1_2_2".url = "path:./v1_2_2";
  inputs."hastysite-v1_3_0".url = "path:./v1_3_0";
  inputs."hastysite-v1_3_1".url = "path:./v1_3_1";
  inputs."hastysite-v1_3_2".url = "path:./v1_3_2";
  inputs."hastysite-v1_3_3".url = "path:./v1_3_3";
  inputs."hastysite-v1_3_4".url = "path:./v1_3_4";
  inputs."hastysite-v1_3_5".url = "path:./v1_3_5";
  inputs."hastysite-v1_3_6".url = "path:./v1_3_6";
  inputs."hastysite-v1_3_7".url = "path:./v1_3_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}