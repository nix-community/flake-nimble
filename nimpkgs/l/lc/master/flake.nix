{
  description = ''A post-modern, "multi-dimensional" configurable ls/file lister'';
  inputs.src-lc-master.flake = false;
  inputs.src-lc-master.type = "github";
  inputs.src-lc-master.owner = "c-blake";
  inputs.src-lc-master.repo = "lc";
  inputs.src-lc-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-lc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}