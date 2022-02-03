{
  description = ''A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.'';
  inputs."microasynchttpserver-master".url = "path:./master";
  inputs."microasynchttpserver-0_10_0".url = "path:./0_10_0";
  inputs."microasynchttpserver-0_10_1".url = "path:./0_10_1";
  inputs."microasynchttpserver-0_10_2".url = "path:./0_10_2";
  inputs."microasynchttpserver-0_9_0".url = "path:./0_9_0";
  inputs."microasynchttpserver-0_9_5".url = "path:./0_9_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}