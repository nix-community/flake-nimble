{
  description = ''a tiny tool to bump nimble versions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bump-1_8_25.flake = false;
  inputs.src-bump-1_8_25.type = "github";
  inputs.src-bump-1_8_25.owner = "disruptek";
  inputs.src-bump-1_8_25.repo = "bump";
  inputs.src-bump-1_8_25.ref = "refs/tags/1.8.25";
  
  
  inputs."https://github.com/disruptek/testes".type = "github";
  inputs."https://github.com/disruptek/testes".owner = "riinr";
  inputs."https://github.com/disruptek/testes".repo = "flake-nimble";
  inputs."https://github.com/disruptek/testes".ref = "flake-pinning";
  inputs."https://github.com/disruptek/testes".dir = "nimpkgs/h/https://github.com/disruptek/testes";

  
  inputs."https://github.com/disruptek/cutelog".type = "github";
  inputs."https://github.com/disruptek/cutelog".owner = "riinr";
  inputs."https://github.com/disruptek/cutelog".repo = "flake-nimble";
  inputs."https://github.com/disruptek/cutelog".ref = "flake-pinning";
  inputs."https://github.com/disruptek/cutelog".dir = "nimpkgs/h/https://github.com/disruptek/cutelog";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bump-1_8_25, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_8_25;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bump-1_8_25"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}