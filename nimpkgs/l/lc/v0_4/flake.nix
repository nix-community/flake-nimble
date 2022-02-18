{
  description = ''A post-modern, "multi-dimensional" configurable ls/file lister'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-lc-v0_4.flake = false;
  inputs.src-lc-v0_4.type = "github";
  inputs.src-lc-v0_4.owner = "c-blake";
  inputs.src-lc-v0_4.repo = "lc";
  inputs.src-lc-v0_4.ref = "refs/tags/v0.4";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-lc-v0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lc-v0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lc-v0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}