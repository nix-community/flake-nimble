{
  description = ''Kaitai Struct runtime library for Nim'';
  inputs."kaitai_struct_nim_runtime-master".url = "path:./master";
  inputs."kaitai_struct_nim_runtime-0_9".url = "path:./0_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}