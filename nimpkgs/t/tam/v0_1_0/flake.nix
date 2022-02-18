{
  description = ''Tales of Maj'Eyal addon manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-tam-v0_1_0.flake = false;
  inputs.src-tam-v0_1_0.type = "github";
  inputs.src-tam-v0_1_0.owner = "SolitudeSF";
  inputs.src-tam-v0_1_0.repo = "tam";
  inputs.src-tam-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."nimquery".type = "github";
  inputs."nimquery".owner = "riinr";
  inputs."nimquery".repo = "flake-nimble";
  inputs."nimquery".ref = "flake-pinning";
  inputs."nimquery".dir = "nimpkgs/n/nimquery";

  
  inputs."tiny_sqlite".type = "github";
  inputs."tiny_sqlite".owner = "riinr";
  inputs."tiny_sqlite".repo = "flake-nimble";
  inputs."tiny_sqlite".ref = "flake-pinning";
  inputs."tiny_sqlite".dir = "nimpkgs/t/tiny_sqlite";

  outputs = { self, nixpkgs, flakeNimbleLib, src-tam-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tam-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tam-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}