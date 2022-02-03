{
  description = ''Transport Services Interface'';
  
  inputs."taps-0_2_1".url = "path:./0_2_1";
  inputs."taps-0_2_2".url = "path:./0_2_2";
  inputs."taps-v0_1_0".url = "path:./v0_1_0";
  inputs."taps-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}