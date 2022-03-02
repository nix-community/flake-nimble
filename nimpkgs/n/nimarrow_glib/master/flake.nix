{
  description = ''apache arrow and parquet c api bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimarrow_glib-master.flake = false;
  inputs.src-nimarrow_glib-master.type = "github";
  inputs.src-nimarrow_glib-master.owner = "emef";
  inputs.src-nimarrow_glib-master.repo = "nimarrow_glib";
  inputs.src-nimarrow_glib-master.ref = "refs/heads/master";
  inputs.src-nimarrow_glib-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimarrow_glib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarrow_glib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimarrow_glib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}