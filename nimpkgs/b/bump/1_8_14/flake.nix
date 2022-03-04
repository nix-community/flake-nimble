{
  description = ''a tiny tool to bump nimble versions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bump-1_8_14.flake = false;
  inputs.src-bump-1_8_14.type = "github";
  inputs.src-bump-1_8_14.owner = "disruptek";
  inputs.src-bump-1_8_14.repo = "bump";
  inputs.src-bump-1_8_14.ref = "refs/tags/1.8.14";
  inputs.src-bump-1_8_14.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."git://github.com/disruptek/cutelog.git".type = "github";
  inputs."git://github.com/disruptek/cutelog.git".owner = "riinr";
  inputs."git://github.com/disruptek/cutelog.git".repo = "flake-nimble";
  inputs."git://github.com/disruptek/cutelog.git".ref = "flake-pinning";
  inputs."git://github.com/disruptek/cutelog.git".dir = "nimpkgs/g/git://github.com/disruptek/cutelog.git";
  inputs."git://github.com/disruptek/cutelog.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."git://github.com/disruptek/cutelog.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bump-1_8_14, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_8_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bump-1_8_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}