{
  description = ''a benchmark tool'';
  inputs.src-golden-3_0_14.flake = false;
  inputs.src-golden-3_0_14.type = "github";
  inputs.src-golden-3_0_14.owner = "disruptek";
  inputs.src-golden-3_0_14.repo = "golden";
  inputs.src-golden-3_0_14.ref = "refs/tags/3.0.14";
  
  
  inputs."foreach".url = "path:../../../f/foreach";
  inputs."foreach".type = "github";
  inputs."foreach".owner = "riinr";
  inputs."foreach".repo = "flake-nimble";
  inputs."foreach".ref = "flake-pinning";
  inputs."foreach".dir = "nimpkgs/f/foreach";

  
  inputs."bump".url = "path:../../../b/bump";
  inputs."bump".type = "github";
  inputs."bump".owner = "riinr";
  inputs."bump".repo = "flake-nimble";
  inputs."bump".ref = "flake-pinning";
  inputs."bump".dir = "nimpkgs/b/bump";

  
  inputs."msgpack4nim".url = "path:../../../m/msgpack4nim";
  inputs."msgpack4nim".type = "github";
  inputs."msgpack4nim".owner = "riinr";
  inputs."msgpack4nim".repo = "flake-nimble";
  inputs."msgpack4nim".ref = "flake-pinning";
  inputs."msgpack4nim".dir = "nimpkgs/m/msgpack4nim";

  
  inputs."terminaltables".url = "path:../../../t/terminaltables";
  inputs."terminaltables".type = "github";
  inputs."terminaltables".owner = "riinr";
  inputs."terminaltables".repo = "flake-nimble";
  inputs."terminaltables".ref = "flake-pinning";
  inputs."terminaltables".dir = "nimpkgs/t/terminaltables";

  
  inputs."https://github.com/disruptek/gittyup".url = "path:../../../h/https://github.com/disruptek/gittyup";
  inputs."https://github.com/disruptek/gittyup".type = "github";
  inputs."https://github.com/disruptek/gittyup".owner = "riinr";
  inputs."https://github.com/disruptek/gittyup".repo = "flake-nimble";
  inputs."https://github.com/disruptek/gittyup".ref = "flake-pinning";
  inputs."https://github.com/disruptek/gittyup".dir = "nimpkgs/h/https://github.com/disruptek/gittyup";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-golden-3_0_14, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-golden-3_0_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-golden-3_0_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}