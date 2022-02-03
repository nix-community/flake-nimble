{
  description = ''HMAC-SHA1 and HMAC-MD5 hashing in Nim'';
  inputs."hmac-master".url = "path:./master";
  inputs."hmac-0_1_1".url = "path:./0_1_1";
  inputs."hmac-0_1_2".url = "path:./0_1_2";
  inputs."hmac-0_1_3".url = "path:./0_1_3";
  inputs."hmac-0_1_4".url = "path:./0_1_4";
  inputs."hmac-0_1_5".url = "path:./0_1_5";
  inputs."hmac-0_1_6".url = "path:./0_1_6";
  inputs."hmac-0_1_7".url = "path:./0_1_7";
  inputs."hmac-0_1_8".url = "path:./0_1_8";
  inputs."hmac-0_1_9".url = "path:./0_1_9";
  inputs."hmac-0_2_0".url = "path:./0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}