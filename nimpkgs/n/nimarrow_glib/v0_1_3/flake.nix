{
  description = ''apache arrow and parquet c api bindings'';
  inputs.src-nimarrow_glib-v0_1_3.flake = false;
  inputs.src-nimarrow_glib-v0_1_3.type = "github";
  inputs.src-nimarrow_glib-v0_1_3.owner = "emef";
  inputs.src-nimarrow_glib-v0_1_3.repo = "nimarrow_glib";
  inputs.src-nimarrow_glib-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-nimarrow_glib-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarrow_glib-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimarrow_glib-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}