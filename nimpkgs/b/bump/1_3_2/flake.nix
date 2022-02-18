{
  description = ''a tiny tool to bump nimble versions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bump-1_3_2.flake = false;
  inputs.src-bump-1_3_2.type = "github";
  inputs.src-bump-1_3_2.owner = "disruptek";
  inputs.src-bump-1_3_2.repo = "bump";
  inputs.src-bump-1_3_2.ref = "refs/tags/1.3.2";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bump-1_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bump-1_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}