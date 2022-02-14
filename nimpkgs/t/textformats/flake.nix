{
  description = ''Easy specification of text formats for structured data'';
  inputs."textformats-main".url = "path:./main";
  inputs."textformats-1_2_0".url = "path:./1_2_0";
  inputs."textformats-v1_0_0".url = "path:./v1_0_0";
  inputs."textformats-v1_1_0".url = "path:./v1_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}