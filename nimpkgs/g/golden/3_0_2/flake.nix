{
  description = ''a benchmark tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-golden-3_0_2.flake = false;
  inputs.src-golden-3_0_2.type = "github";
  inputs.src-golden-3_0_2.owner = "disruptek";
  inputs.src-golden-3_0_2.repo = "golden";
  inputs.src-golden-3_0_2.ref = "refs/tags/3.0.2";
  inputs.src-golden-3_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."foreach".type = "github";
  # inputs."foreach".owner = "riinr";
  # inputs."foreach".repo = "flake-nimble";
  # inputs."foreach".ref = "flake-pinning";
  # inputs."foreach".dir = "nimpkgs/f/foreach";
  # inputs."foreach".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."foreach".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."bump".type = "github";
  # inputs."bump".owner = "riinr";
  # inputs."bump".repo = "flake-nimble";
  # inputs."bump".ref = "flake-pinning";
  # inputs."bump".dir = "nimpkgs/b/bump";
  # inputs."bump".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bump".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimetry".type = "github";
  # inputs."nimetry".owner = "riinr";
  # inputs."nimetry".repo = "flake-nimble";
  # inputs."nimetry".ref = "flake-pinning";
  # inputs."nimetry".dir = "nimpkgs/n/nimetry";
  # inputs."nimetry".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimetry".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."msgpack4nim".type = "github";
  # inputs."msgpack4nim".owner = "riinr";
  # inputs."msgpack4nim".repo = "flake-nimble";
  # inputs."msgpack4nim".ref = "flake-pinning";
  # inputs."msgpack4nim".dir = "nimpkgs/m/msgpack4nim";
  # inputs."msgpack4nim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."msgpack4nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/disruptek/nim-terminaltables".type = "github";
  # inputs."https://github.com/disruptek/nim-terminaltables".owner = "riinr";
  # inputs."https://github.com/disruptek/nim-terminaltables".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/nim-terminaltables".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/nim-terminaltables".dir = "nimpkgs/h/https://github.com/disruptek/nim-terminaltables";
  # inputs."https://github.com/disruptek/nim-terminaltables".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/nim-terminaltables".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimgit2".type = "github";
  # inputs."nimgit2".owner = "riinr";
  # inputs."nimgit2".repo = "flake-nimble";
  # inputs."nimgit2".ref = "flake-pinning";
  # inputs."nimgit2".dir = "nimpkgs/n/nimgit2";
  # inputs."nimgit2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimgit2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."lmdb".type = "github";
  # inputs."lmdb".owner = "riinr";
  # inputs."lmdb".repo = "flake-nimble";
  # inputs."lmdb".ref = "flake-pinning";
  # inputs."lmdb".dir = "nimpkgs/l/lmdb";
  # inputs."lmdb".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."lmdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-golden-3_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-golden-3_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-golden-3_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}