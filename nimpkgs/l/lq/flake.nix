{
  description = ''Directory listing tool'';
  inputs."lq-master".url = "path:./master";
  inputs."lq-1_0_0".url = "path:./1_0_0";
  inputs."lq-1_0_1".url = "path:./1_0_1";
  inputs."lq-2_0_0".url = "path:./2_0_0";
  inputs."lq-2_2_0".url = "path:./2_2_0";
  inputs."lq-2_2_1".url = "path:./2_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}