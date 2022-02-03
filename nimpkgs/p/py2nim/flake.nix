{
  description = ''Py2Nim is a tool to translate Python code to Nim. The output is human-readable Nim code, meant to be tweaked by hand after the translation process.'';
  inputs."py2nim-main".url = "path:./main";
  inputs."py2nim-v0_1_0".url = "path:./v0_1_0";
  inputs."py2nim-v0_1_1".url = "path:./v0_1_1";
  inputs."py2nim-v0_1_2".url = "path:./v0_1_2";
  inputs."py2nim-v0_1_3".url = "path:./v0_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}