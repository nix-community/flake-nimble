{
  description = ''Tales of Maj'Eyal addon manager'';
  inputs.src-tam-master.flake = false;
  inputs.src-tam-master.type = "github";
  inputs.src-tam-master.owner = "SolitudeSF";
  inputs.src-tam-master.repo = "tam";
  inputs.src-tam-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-tam-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tam-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tam-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}