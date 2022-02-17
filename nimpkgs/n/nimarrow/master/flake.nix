{
  description = ''apache arrow bindings for nim'';
  inputs.src-nimarrow-master.flake = false;
  inputs.src-nimarrow-master.type = "github";
  inputs.src-nimarrow-master.owner = "emef";
  inputs.src-nimarrow-master.repo = "nimarrow";
  inputs.src-nimarrow-master.ref = "refs/heads/master";
  
  
  inputs."nimarrow_glib".type = "github";
  inputs."nimarrow_glib".owner = "riinr";
  inputs."nimarrow_glib".repo = "flake-nimble";
  inputs."nimarrow_glib".ref = "flake-pinning";
  inputs."nimarrow_glib".dir = "nimpkgs/n/nimarrow_glib";

  outputs = { self, nixpkgs, src-nimarrow-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarrow-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimarrow-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}