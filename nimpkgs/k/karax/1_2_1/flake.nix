{
  description = ''Karax is a framework for developing single page applications in Nim.'';
  inputs.src-karax-1_2_1.flake = false;
  inputs.src-karax-1_2_1.type = "github";
  inputs.src-karax-1_2_1.owner = "karaxnim";
  inputs.src-karax-1_2_1.repo = "karax";
  inputs.src-karax-1_2_1.ref = "refs/tags/1.2.1";
  
  
  inputs."ws".url = "path:../../../w/ws";
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  
  inputs."dotenv".url = "path:../../../d/dotenv";
  inputs."dotenv".type = "github";
  inputs."dotenv".owner = "riinr";
  inputs."dotenv".repo = "flake-nimble";
  inputs."dotenv".ref = "flake-pinning";
  inputs."dotenv".dir = "nimpkgs/d/dotenv";

  outputs = { self, nixpkgs, src-karax-1_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-karax-1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-karax-1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}