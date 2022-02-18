{
  description = ''Tencil is a mustache-compatible JSON based template engine for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-tencil-main.flake = false;
  inputs.src-tencil-main.type = "github";
  inputs.src-tencil-main.owner = "enimatek-nl";
  inputs.src-tencil-main.repo = "tencil";
  inputs.src-tencil-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tencil-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tencil-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tencil-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}