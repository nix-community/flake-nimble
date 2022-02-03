{
  description = ''apache arrow and parquet c api bindings'';
  inputs.src-nimarrow_glib-master.flake = false;
  inputs.src-nimarrow_glib-master.type = "github";
  inputs.src-nimarrow_glib-master.owner = "emef";
  inputs.src-nimarrow_glib-master.repo = "nimarrow_glib";
  inputs.src-nimarrow_glib-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimarrow_glib-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarrow_glib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimarrow_glib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}