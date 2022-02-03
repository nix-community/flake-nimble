{
  description = ''nim package manager'';
  
  inputs."slim-v0_1_1".url = "path:./v0_1_1";
  inputs."slim-v0_1_2".url = "path:./v0_1_2";
  inputs."slim-v0_1_3".url = "path:./v0_1_3";
  inputs."slim-v0_1_5".url = "path:./v0_1_5";
  inputs."slim-v0_1_6".url = "path:./v0_1_6";
  inputs."slim-v0_1_7".url = "path:./v0_1_7";
  inputs."slim-v0_1_8".url = "path:./v0_1_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}