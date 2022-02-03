{
  description = ''Text string translation from free online crowdsourced API. Tinyslation a tiny translation.'';
  inputs."translation-master".url = "path:./master";
  inputs."translation-0_2_0".url = "path:./0_2_0";
  inputs."translation-0_3_1".url = "path:./0_3_1";
  inputs."translation-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}