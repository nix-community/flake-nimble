{
  description = ''A Nim library for biological sequence data.'';
  inputs."bio_seq-main".url = "path:./main";
  inputs."bio_seq-v_0_0_2".url = "path:./v_0_0_2";
  inputs."bio_seq-v_0_0_5".url = "path:./v_0_0_5";
  inputs."bio_seq-v_0_0_7".url = "path:./v_0_0_7";
  inputs."bio_seq-v0_0_1".url = "path:./v0_0_1";
  inputs."bio_seq-v0_0_3".url = "path:./v0_0_3";
  inputs."bio_seq-v0_0_4".url = "path:./v0_0_4";
  inputs."bio_seq-v0_0_8".url = "path:./v0_0_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}