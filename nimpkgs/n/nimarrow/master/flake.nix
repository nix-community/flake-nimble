{
  description = ''apache arrow bindings for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimarrow-master.flake = false;
  inputs.src-nimarrow-master.type = "github";
  inputs.src-nimarrow-master.owner = "emef";
  inputs.src-nimarrow-master.repo = "nimarrow";
  inputs.src-nimarrow-master.ref = "refs/heads/master";
  inputs.src-nimarrow-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimarrow_glib".type = "github";
  inputs."nimarrow_glib".owner = "riinr";
  inputs."nimarrow_glib".repo = "flake-nimble";
  inputs."nimarrow_glib".ref = "flake-pinning";
  inputs."nimarrow_glib".dir = "nimpkgs/n/nimarrow_glib";
  inputs."nimarrow_glib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimarrow-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarrow-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimarrow-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}