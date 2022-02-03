{
  description = ''Test asynchronous code'';
  inputs."asynctest-main".url = "path:./main";
  inputs."asynctest-0_1_0".url = "path:./0_1_0";
  inputs."asynctest-0_2_0".url = "path:./0_2_0";
  inputs."asynctest-0_2_1".url = "path:./0_2_1";
  inputs."asynctest-0_3_0".url = "path:./0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}