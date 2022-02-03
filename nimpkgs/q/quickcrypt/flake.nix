{
  description = ''A library for quickly and easily encrypting strings & files. User-friendly and highly compatible.'';
  inputs."quickcrypt-master".url = "path:./master";
  inputs."quickcrypt-0_1_0".url = "path:./0_1_0";
  inputs."quickcrypt-0_1_1".url = "path:./0_1_1";
  inputs."quickcrypt-0_1_2".url = "path:./0_1_2";
  inputs."quickcrypt-0_1_3".url = "path:./0_1_3";
  inputs."quickcrypt-0_1_4".url = "path:./0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}