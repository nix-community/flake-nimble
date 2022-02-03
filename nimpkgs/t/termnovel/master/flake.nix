{
  description = ''A command that to read novel on terminal'';
  inputs.src-termnovel-master.flake = false;
  inputs.src-termnovel-master.type = "github";
  inputs.src-termnovel-master.owner = "jiro4989";
  inputs.src-termnovel-master.repo = "termnovel";
  inputs.src-termnovel-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."markdown".url = "path:../../../m/markdown";
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  
  inputs."nimquery".url = "path:../../../n/nimquery";
  inputs."nimquery".type = "github";
  inputs."nimquery".owner = "riinr";
  inputs."nimquery".repo = "flake-nimble";
  inputs."nimquery".ref = "flake-pinning";
  inputs."nimquery".dir = "nimpkgs/n/nimquery";

  
  inputs."eastasianwidth".url = "path:../../../e/eastasianwidth";
  inputs."eastasianwidth".type = "github";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".repo = "flake-nimble";
  inputs."eastasianwidth".ref = "flake-pinning";
  inputs."eastasianwidth".dir = "nimpkgs/e/eastasianwidth";

  
  inputs."alignment".url = "path:../../../a/alignment";
  inputs."alignment".type = "github";
  inputs."alignment".owner = "riinr";
  inputs."alignment".repo = "flake-nimble";
  inputs."alignment".ref = "flake-pinning";
  inputs."alignment".dir = "nimpkgs/a/alignment";

  outputs = { self, nixpkgs, src-termnovel-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-termnovel-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-termnovel-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}