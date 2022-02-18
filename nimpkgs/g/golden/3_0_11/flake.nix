{
  description = ''a benchmark tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-golden-3_0_11.flake = false;
  inputs.src-golden-3_0_11.type = "github";
  inputs.src-golden-3_0_11.owner = "disruptek";
  inputs.src-golden-3_0_11.repo = "golden";
  inputs.src-golden-3_0_11.ref = "refs/tags/3.0.11";
  
  
  inputs."foreach".type = "github";
  inputs."foreach".owner = "riinr";
  inputs."foreach".repo = "flake-nimble";
  inputs."foreach".ref = "flake-pinning";
  inputs."foreach".dir = "nimpkgs/f/foreach";

  
  inputs."bump".type = "github";
  inputs."bump".owner = "riinr";
  inputs."bump".repo = "flake-nimble";
  inputs."bump".ref = "flake-pinning";
  inputs."bump".dir = "nimpkgs/b/bump";

  
  inputs."nimetry".type = "github";
  inputs."nimetry".owner = "riinr";
  inputs."nimetry".repo = "flake-nimble";
  inputs."nimetry".ref = "flake-pinning";
  inputs."nimetry".dir = "nimpkgs/n/nimetry";

  
  inputs."https://github.com/disruptek/msgpack4nim".type = "github";
  inputs."https://github.com/disruptek/msgpack4nim".owner = "riinr";
  inputs."https://github.com/disruptek/msgpack4nim".repo = "flake-nimble";
  inputs."https://github.com/disruptek/msgpack4nim".ref = "flake-pinning";
  inputs."https://github.com/disruptek/msgpack4nim".dir = "nimpkgs/h/https://github.com/disruptek/msgpack4nim";

  
  inputs."terminaltables".type = "github";
  inputs."terminaltables".owner = "riinr";
  inputs."terminaltables".repo = "flake-nimble";
  inputs."terminaltables".ref = "flake-pinning";
  inputs."terminaltables".dir = "nimpkgs/t/terminaltables";

  
  inputs."nimgit2".type = "github";
  inputs."nimgit2".owner = "riinr";
  inputs."nimgit2".repo = "flake-nimble";
  inputs."nimgit2".ref = "flake-pinning";
  inputs."nimgit2".dir = "nimpkgs/n/nimgit2";

  
  inputs."lmdb".type = "github";
  inputs."lmdb".owner = "riinr";
  inputs."lmdb".repo = "flake-nimble";
  inputs."lmdb".ref = "flake-pinning";
  inputs."lmdb".dir = "nimpkgs/l/lmdb";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-golden-3_0_11, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-golden-3_0_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-golden-3_0_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}