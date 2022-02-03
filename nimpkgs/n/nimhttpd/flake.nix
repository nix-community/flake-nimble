{
  description = ''A tiny static file web server.'';
  inputs."nimhttpd-master".url = "path:./master";
  inputs."nimhttpd-v1_0_0".url = "path:./v1_0_0";
  inputs."nimhttpd-v1_0_1".url = "path:./v1_0_1";
  inputs."nimhttpd-v1_0_2".url = "path:./v1_0_2";
  inputs."nimhttpd-v1_0_3".url = "path:./v1_0_3";
  inputs."nimhttpd-v1_0_4".url = "path:./v1_0_4";
  inputs."nimhttpd-v1_0_5".url = "path:./v1_0_5";
  inputs."nimhttpd-v1_0_6".url = "path:./v1_0_6";
  inputs."nimhttpd-v1_0_7".url = "path:./v1_0_7";
  inputs."nimhttpd-v1_0_8".url = "path:./v1_0_8";
  inputs."nimhttpd-v1_1_0".url = "path:./v1_1_0";
  inputs."nimhttpd-v1_1_1".url = "path:./v1_1_1";
  inputs."nimhttpd-v1_2_0".url = "path:./v1_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}