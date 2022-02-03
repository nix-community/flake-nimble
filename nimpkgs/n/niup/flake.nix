{
  description = ''IUP FFI bindings'';
  inputs."niup-master".url = "path:./master";
  inputs."niup-3_27_0".url = "path:./3_27_0";
  inputs."niup-3_27_1".url = "path:./3_27_1";
  inputs."niup-3_27_2".url = "path:./3_27_2";
  inputs."niup-3_27_3".url = "path:./3_27_3";
  inputs."niup-3_27_4".url = "path:./3_27_4";
  inputs."niup-3_27_5".url = "path:./3_27_5";
  inputs."niup-3_27_6".url = "path:./3_27_6";
  inputs."niup-3_27_7".url = "path:./3_27_7";
  inputs."niup-3_27_8".url = "path:./3_27_8";
  inputs."niup-3_28_0".url = "path:./3_28_0";
  inputs."niup-3_28_1".url = "path:./3_28_1";
  inputs."niup-3_28_2".url = "path:./3_28_2";
  inputs."niup-3_29_0".url = "path:./3_29_0";
  inputs."niup-3_29_1".url = "path:./3_29_1";
  inputs."niup-3_30_0".url = "path:./3_30_0";
  inputs."niup-3_30_1".url = "path:./3_30_1";
  inputs."niup-3_30_2".url = "path:./3_30_2";
  inputs."niup-v3_30_5".url = "path:./v3_30_5";
  inputs."niup-v3_30_6".url = "path:./v3_30_6";
  inputs."niup-v3_30_7".url = "path:./v3_30_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}