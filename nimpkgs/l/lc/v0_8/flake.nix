{
  description = ''A post-modern, "multi-dimensional" configurable ls/file lister'';
  inputs.src-lc-v0_8.flake = false;
  inputs.src-lc-v0_8.type = "github";
  inputs.src-lc-v0_8.owner = "c-blake";
  inputs.src-lc-v0_8.repo = "lc";
  inputs.src-lc-v0_8.ref = "refs/tags/v0.8";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-lc-v0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lc-v0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lc-v0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}