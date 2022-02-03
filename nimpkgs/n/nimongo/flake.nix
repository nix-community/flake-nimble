{
  description = ''MongoDB driver in pure Nim language with synchronous and asynchronous I/O support'';
  inputs."nimongo-master".url = "path:./master";
  inputs."nimongo-v0_1_0".url = "path:./v0_1_0";
  inputs."nimongo-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}