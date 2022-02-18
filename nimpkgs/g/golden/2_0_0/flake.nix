{
  description = ''a benchmark tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-golden-2_0_0.flake = false;
  inputs.src-golden-2_0_0.type = "github";
  inputs.src-golden-2_0_0.owner = "disruptek";
  inputs.src-golden-2_0_0.repo = "golden";
  inputs.src-golden-2_0_0.ref = "refs/tags/2.0.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."foreach".type = "github";
  inputs."foreach".owner = "riinr";
  inputs."foreach".repo = "flake-nimble";
  inputs."foreach".ref = "flake-pinning";
  inputs."foreach".dir = "nimpkgs/f/foreach";

  
  inputs."nimetry".type = "github";
  inputs."nimetry".owner = "riinr";
  inputs."nimetry".repo = "flake-nimble";
  inputs."nimetry".ref = "flake-pinning";
  inputs."nimetry".dir = "nimpkgs/n/nimetry";

  
  inputs."msgpack4nim".type = "github";
  inputs."msgpack4nim".owner = "riinr";
  inputs."msgpack4nim".repo = "flake-nimble";
  inputs."msgpack4nim".ref = "flake-pinning";
  inputs."msgpack4nim".dir = "nimpkgs/m/msgpack4nim";

  
  inputs."lmdb".type = "github";
  inputs."lmdb".owner = "riinr";
  inputs."lmdb".repo = "flake-nimble";
  inputs."lmdb".ref = "flake-pinning";
  inputs."lmdb".dir = "nimpkgs/l/lmdb";

  
  inputs."http://github.com/genotrance/nimgit2.git".type = "github";
  inputs."http://github.com/genotrance/nimgit2.git".owner = "riinr";
  inputs."http://github.com/genotrance/nimgit2.git".repo = "flake-nimble";
  inputs."http://github.com/genotrance/nimgit2.git".ref = "flake-pinning";
  inputs."http://github.com/genotrance/nimgit2.git".dir = "nimpkgs/h/http://github.com/genotrance/nimgit2.git";

  outputs = { self, nixpkgs, flakeNimbleLib, src-golden-2_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-golden-2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-golden-2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}