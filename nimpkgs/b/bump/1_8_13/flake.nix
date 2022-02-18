{
  description = ''a tiny tool to bump nimble versions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bump-1_8_13.flake = false;
  inputs.src-bump-1_8_13.type = "github";
  inputs.src-bump-1_8_13.owner = "disruptek";
  inputs.src-bump-1_8_13.repo = "bump";
  inputs.src-bump-1_8_13.ref = "refs/tags/1.8.13";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."git://github.com/disruptek/cutelog.git".type = "github";
  inputs."git://github.com/disruptek/cutelog.git".owner = "riinr";
  inputs."git://github.com/disruptek/cutelog.git".repo = "flake-nimble";
  inputs."git://github.com/disruptek/cutelog.git".ref = "flake-pinning";
  inputs."git://github.com/disruptek/cutelog.git".dir = "nimpkgs/g/git://github.com/disruptek/cutelog.git";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bump-1_8_13, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_8_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bump-1_8_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}