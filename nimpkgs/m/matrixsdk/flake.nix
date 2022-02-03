{
  description = ''A Matrix (https://matrix.org) client and appservice API wrapper for Nim!'';
  inputs."matrixsdk-main".url = "path:./main";
  inputs."matrixsdk-0_1_0".url = "path:./0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}