{
  description = ''a benchmark tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-golden-1_1_3.flake = false;
  inputs.src-golden-1_1_3.type = "github";
  inputs.src-golden-1_1_3.owner = "disruptek";
  inputs.src-golden-1_1_3.repo = "golden";
  inputs.src-golden-1_1_3.ref = "refs/tags/1.1.3";
  inputs.src-golden-1_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."foreach".type = "github";
  # inputs."foreach".owner = "riinr";
  # inputs."foreach".repo = "flake-nimble";
  # inputs."foreach".ref = "flake-pinning";
  # inputs."foreach".dir = "nimpkgs/f/foreach";
  # inputs."foreach".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."foreach".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."http://github.com/genotrance/nimgit2.git".type = "github";
  # inputs."http://github.com/genotrance/nimgit2.git".owner = "riinr";
  # inputs."http://github.com/genotrance/nimgit2.git".repo = "flake-nimble";
  # inputs."http://github.com/genotrance/nimgit2.git".ref = "flake-pinning";
  # inputs."http://github.com/genotrance/nimgit2.git".dir = "nimpkgs/h/http://github.com/genotrance/nimgit2.git";
  # inputs."http://github.com/genotrance/nimgit2.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."http://github.com/genotrance/nimgit2.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-golden-1_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-golden-1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-golden-1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}