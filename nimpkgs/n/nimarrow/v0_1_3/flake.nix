{
  description = ''apache arrow bindings for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimarrow-v0_1_3.flake = false;
  inputs.src-nimarrow-v0_1_3.type = "github";
  inputs.src-nimarrow-v0_1_3.owner = "emef";
  inputs.src-nimarrow-v0_1_3.repo = "nimarrow";
  inputs.src-nimarrow-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."nimarrow_glib".type = "github";
  inputs."nimarrow_glib".owner = "riinr";
  inputs."nimarrow_glib".repo = "flake-nimble";
  inputs."nimarrow_glib".ref = "flake-pinning";
  inputs."nimarrow_glib".dir = "nimpkgs/n/nimarrow_glib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimarrow-v0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarrow-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimarrow-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}