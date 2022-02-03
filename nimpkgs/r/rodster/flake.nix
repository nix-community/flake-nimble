{
  description = ''rodster'';
  inputs."rodster-main".url = "path:./main";
  inputs."rodster-0_1_0".url = "path:./0_1_0";
  inputs."rodster-0_2_0".url = "path:./0_2_0";
  inputs."rodster-0_3_0".url = "path:./0_3_0";
  inputs."rodster-1_0_0".url = "path:./1_0_0";
  inputs."rodster-1_1_0".url = "path:./1_1_0";
  inputs."rodster-1_2_0".url = "path:./1_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}