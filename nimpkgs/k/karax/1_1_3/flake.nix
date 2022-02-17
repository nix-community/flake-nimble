{
  description = ''Karax is a framework for developing single page applications in Nim.'';
  inputs.src-karax-1_1_3.flake = false;
  inputs.src-karax-1_1_3.type = "github";
  inputs.src-karax-1_1_3.owner = "karaxnim";
  inputs.src-karax-1_1_3.repo = "karax";
  inputs.src-karax-1_1_3.ref = "refs/tags/1.1.3";
  
  
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

  outputs = { self, nixpkgs, src-karax-1_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-karax-1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-karax-1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}