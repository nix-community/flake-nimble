{
  description = ''Nim wrapper for distorm3 - Powerful Disassembler Library For x86/AMD64'';
  inputs."distorm3-master".url = "path:./master";
  inputs."distorm3-3_5_2".url = "path:./3_5_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}