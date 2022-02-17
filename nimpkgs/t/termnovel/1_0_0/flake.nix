{
  description = ''A command that to read novel on terminal'';
  inputs.src-termnovel-1_0_0.flake = false;
  inputs.src-termnovel-1_0_0.type = "github";
  inputs.src-termnovel-1_0_0.owner = "jiro4989";
  inputs.src-termnovel-1_0_0.repo = "termnovel";
  inputs.src-termnovel-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  
  inputs."nimquery".type = "github";
  inputs."nimquery".owner = "riinr";
  inputs."nimquery".repo = "flake-nimble";
  inputs."nimquery".ref = "flake-pinning";
  inputs."nimquery".dir = "nimpkgs/n/nimquery";

  
  inputs."eastasianwidth".type = "github";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".repo = "flake-nimble";
  inputs."eastasianwidth".ref = "flake-pinning";
  inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";

  
  inputs."alignment".type = "github";
  inputs."alignment".owner = "riinr";
  inputs."alignment".repo = "flake-nimble";
  inputs."alignment".ref = "flake-pinning";
  inputs."alignment".dir = "nimpkgs/a/alignment";

  outputs = { self, nixpkgs, src-termnovel-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-termnovel-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-termnovel-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}