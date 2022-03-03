{
  description = ''A command that to read novel on terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-termnovel-1_0_0.flake = false;
  inputs.src-termnovel-1_0_0.type = "github";
  inputs.src-termnovel-1_0_0.owner = "jiro4989";
  inputs.src-termnovel-1_0_0.repo = "termnovel";
  inputs.src-termnovel-1_0_0.ref = "refs/tags/1.0.0";
  inputs.src-termnovel-1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."markdown".type = "github";
  # inputs."markdown".owner = "riinr";
  # inputs."markdown".repo = "flake-nimble";
  # inputs."markdown".ref = "flake-pinning";
  # inputs."markdown".dir = "nimpkgs/m/markdown";
  # inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimquery".type = "github";
  # inputs."nimquery".owner = "riinr";
  # inputs."nimquery".repo = "flake-nimble";
  # inputs."nimquery".ref = "flake-pinning";
  # inputs."nimquery".dir = "nimpkgs/n/nimquery";
  # inputs."nimquery".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimquery".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."eastasianwidth".type = "github";
  # inputs."eastasianwidth".owner = "riinr";
  # inputs."eastasianwidth".repo = "flake-nimble";
  # inputs."eastasianwidth".ref = "flake-pinning";
  # inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";
  # inputs."eastasianwidth".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."eastasianwidth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."alignment".type = "github";
  # inputs."alignment".owner = "riinr";
  # inputs."alignment".repo = "flake-nimble";
  # inputs."alignment".ref = "flake-pinning";
  # inputs."alignment".dir = "nimpkgs/a/alignment";
  # inputs."alignment".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."alignment".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-termnovel-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-termnovel-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-termnovel-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}