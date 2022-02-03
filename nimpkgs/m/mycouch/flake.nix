{
  description = ''a couchDB client written in Nim'';
  inputs."mycouch-main".url = "path:./main";
  inputs."mycouch-0_2".url = "path:./0_2";
  inputs."mycouch-0_4_0".url = "path:./0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}