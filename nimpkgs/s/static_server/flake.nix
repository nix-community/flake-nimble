{
  description = ''A tiny static file web server.'';
  inputs."static_server-master".url = "path:./master";
  inputs."static_server-v1_0_0".url = "path:./v1_0_0";
  inputs."static_server-v1_0_1".url = "path:./v1_0_1";
  inputs."static_server-v1_0_2".url = "path:./v1_0_2";
  inputs."static_server-v1_0_3".url = "path:./v1_0_3";
  inputs."static_server-v1_0_4".url = "path:./v1_0_4";
  inputs."static_server-v1_0_5".url = "path:./v1_0_5";
  inputs."static_server-v1_0_6".url = "path:./v1_0_6";
  inputs."static_server-v1_0_7".url = "path:./v1_0_7";
  inputs."static_server-v1_0_8".url = "path:./v1_0_8";
  inputs."static_server-v2_0_0".url = "path:./v2_0_0";
  inputs."static_server-v2_0_1".url = "path:./v2_0_1";
  inputs."static_server-v2_0_2".url = "path:./v2_0_2";
  inputs."static_server-v2_0_3".url = "path:./v2_0_3";
  inputs."static_server-v2_2_0".url = "path:./v2_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}