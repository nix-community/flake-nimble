{
  description = ''A library for playing audio files'';
  inputs."parasound-master".url = "path:./master";
  inputs."parasound-0_1_0".url = "path:./0_1_0";
  inputs."parasound-0_2_0".url = "path:./0_2_0";
  inputs."parasound-1_0_0".url = "path:./1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}