{
  description = ''Pub/Sub engine'';
  inputs."suber-main".url = "path:./main";
  inputs."suber-0_9_9".url = "path:./0_9_9";
  inputs."suber-1_0_0".url = "path:./1_0_0";
  inputs."suber-2_0_0".url = "path:./2_0_0";
  inputs."suber-2_0_1".url = "path:./2_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}