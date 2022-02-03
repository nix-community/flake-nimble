{
  description = ''apache arrow and parquet c api bindings'';
  inputs.src-nimarrow_glib-v0_1_2.flake = false;
  inputs.src-nimarrow_glib-v0_1_2.type = "github";
  inputs.src-nimarrow_glib-v0_1_2.owner = "emef";
  inputs.src-nimarrow_glib-v0_1_2.repo = "nimarrow_glib";
  inputs.src-nimarrow_glib-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-nimarrow_glib-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarrow_glib-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimarrow_glib-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}