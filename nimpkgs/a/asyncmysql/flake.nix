{
  description = ''Asynchronous MySQL connector written in pure Nim'';
  inputs."asyncmysql-master".url = "path:./master";
  inputs."asyncmysql-0_4_3".url = "path:./0_4_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}