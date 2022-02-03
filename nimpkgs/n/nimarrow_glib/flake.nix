{
  description = ''apache arrow and parquet c api bindings'';
  inputs."nimarrow_glib-master".url = "path:./master";
  inputs."nimarrow_glib-v0_1_1".url = "path:./v0_1_1";
  inputs."nimarrow_glib-v0_1_2".url = "path:./v0_1_2";
  inputs."nimarrow_glib-v0_1_3".url = "path:./v0_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}