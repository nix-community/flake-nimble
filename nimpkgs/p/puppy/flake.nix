{
  description = ''Fetch url resources via HTTP and HTTPS.'';
  inputs."puppy-master".url = "path:./master";
  inputs."puppy-1_0_0".url = "path:./1_0_0";
  inputs."puppy-1_0_1".url = "path:./1_0_1";
  inputs."puppy-1_0_2".url = "path:./1_0_2";
  inputs."puppy-1_0_3".url = "path:./1_0_3";
  inputs."puppy-1_0_4".url = "path:./1_0_4";
  inputs."puppy-1_0_5".url = "path:./1_0_5";
  inputs."puppy-1_0_6".url = "path:./1_0_6";
  inputs."puppy-1_1_0".url = "path:./1_1_0";
  inputs."puppy-1_2_0".url = "path:./1_2_0";
  inputs."puppy-1_2_1".url = "path:./1_2_1";
  inputs."puppy-1_3_0".url = "path:./1_3_0";
  inputs."puppy-1_4_0".url = "path:./1_4_0";
  inputs."puppy-1_5_0".url = "path:./1_5_0";
  inputs."puppy-1_5_1".url = "path:./1_5_1";
  inputs."puppy-1_5_2".url = "path:./1_5_2";
  inputs."puppy-1_5_3".url = "path:./1_5_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}