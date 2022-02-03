{
  description = ''AWS Security Token Service API in Nim'';
  inputs."awsSTS-main".url = "path:./main";
  inputs."awsSTS-v1_0_0".url = "path:./v1_0_0";
  inputs."awsSTS-v1_0_1".url = "path:./v1_0_1";
  inputs."awsSTS-v1_0_2".url = "path:./v1_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}