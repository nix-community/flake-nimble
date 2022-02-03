{
  description = ''Lock-free threadsafe MPMC with high throughput'';
  inputs."loony-main".url = "path:./main";
  inputs."loony-0_1_0".url = "path:./0_1_0";
  inputs."loony-0_1_1".url = "path:./0_1_1";
  inputs."loony-0_1_10".url = "path:./0_1_10";
  inputs."loony-0_1_11".url = "path:./0_1_11";
  inputs."loony-0_1_12".url = "path:./0_1_12";
  inputs."loony-0_1_2".url = "path:./0_1_2";
  inputs."loony-0_1_3".url = "path:./0_1_3";
  inputs."loony-0_1_5".url = "path:./0_1_5";
  inputs."loony-0_1_6".url = "path:./0_1_6";
  inputs."loony-0_1_7".url = "path:./0_1_7";
  inputs."loony-0_1_8".url = "path:./0_1_8";
  inputs."loony-0_1_9".url = "path:./0_1_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}