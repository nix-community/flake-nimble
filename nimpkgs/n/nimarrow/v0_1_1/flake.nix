{
  description = ''apache arrow bindings for nim'';
  inputs.src-nimarrow-v0_1_1.flake = false;
  inputs.src-nimarrow-v0_1_1.type = "github";
  inputs.src-nimarrow-v0_1_1.owner = "emef";
  inputs.src-nimarrow-v0_1_1.repo = "nimarrow";
  inputs.src-nimarrow-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."nimarrow_glib".url = "path:../../../n/nimarrow_glib";
  inputs."nimarrow_glib".type = "github";
  inputs."nimarrow_glib".owner = "riinr";
  inputs."nimarrow_glib".repo = "flake-nimble";
  inputs."nimarrow_glib".ref = "flake-pinning";
  inputs."nimarrow_glib".dir = "nimpkgs/n/nimarrow_glib";

  outputs = { self, nixpkgs, src-nimarrow-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarrow-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimarrow-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}