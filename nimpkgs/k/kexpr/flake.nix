{
  description = ''wrapper for kexpr math expression evaluation library'';
  inputs."kexpr-master".url = "path:./master";
  inputs."kexpr-v0_0_2".url = "path:./v0_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}