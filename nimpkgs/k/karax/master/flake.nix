{
  description = ''Karax is a framework for developing single page applications in Nim.'';
  inputs.src-karax-master.flake = false;
  inputs.src-karax-master.type = "github";
  inputs.src-karax-master.owner = "karaxnim";
  inputs.src-karax-master.repo = "karax";
  inputs.src-karax-master.ref = "refs/heads/master";
  
  
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  
  inputs."dotenv".type = "github";
  inputs."dotenv".owner = "riinr";
  inputs."dotenv".repo = "flake-nimble";
  inputs."dotenv".ref = "flake-pinning";
  inputs."dotenv".dir = "nimpkgs/d/dotenv";

  outputs = { self, nixpkgs, src-karax-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-karax-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-karax-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}