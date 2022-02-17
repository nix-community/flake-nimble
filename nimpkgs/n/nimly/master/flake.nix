{
  description = ''Lexer Generator and Parser Generator as a Macro Library in Nim.'';
  inputs.src-nimly-master.flake = false;
  inputs.src-nimly-master.type = "github";
  inputs.src-nimly-master.owner = "loloicci";
  inputs.src-nimly-master.repo = "nimly";
  inputs.src-nimly-master.ref = "refs/heads/master";
  
  
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";

  outputs = { self, nixpkgs, src-nimly-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimly-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimly-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}