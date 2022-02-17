{
  description = ''Migration manager for Norm.'';
  inputs.src-norman-master.flake = false;
  inputs.src-norman-master.type = "github";
  inputs.src-norman-master.owner = "moigagoo";
  inputs.src-norman-master.repo = "norman";
  inputs.src-norman-master.ref = "refs/heads/master";
  
  
  inputs."norm".type = "github";
  inputs."norm".owner = "riinr";
  inputs."norm".repo = "flake-nimble";
  inputs."norm".ref = "flake-pinning";
  inputs."norm".dir = "nimpkgs/n/norm";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."dotenv".type = "github";
  inputs."dotenv".owner = "riinr";
  inputs."dotenv".repo = "flake-nimble";
  inputs."dotenv".ref = "flake-pinning";
  inputs."dotenv".dir = "nimpkgs/d/dotenv";

  outputs = { self, nixpkgs, src-norman-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norman-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norman-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}