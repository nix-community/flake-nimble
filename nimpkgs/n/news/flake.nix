{
  description = ''Easy websocket with chronos support'';
  inputs."news-master".url = "path:./master";
  inputs."news-0_2".url = "path:./0_2";
  inputs."news-0_3".url = "path:./0_3";
  inputs."news-0_4".url = "path:./0_4";
  inputs."news-0_5".url = "path:./0_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}