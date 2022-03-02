{
  description = ''Migration manager for Norm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-norman-2_1_7.flake = false;
  inputs.src-norman-2_1_7.type = "github";
  inputs.src-norman-2_1_7.owner = "moigagoo";
  inputs.src-norman-2_1_7.repo = "norman";
  inputs.src-norman-2_1_7.ref = "refs/tags/2.1.7";
  inputs.src-norman-2_1_7.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."norm".type = "github";
  # inputs."norm".owner = "riinr";
  # inputs."norm".repo = "flake-nimble";
  # inputs."norm".ref = "flake-pinning";
  # inputs."norm".dir = "nimpkgs/n/norm";
  # inputs."norm".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."norm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."dotenv".type = "github";
  # inputs."dotenv".owner = "riinr";
  # inputs."dotenv".repo = "flake-nimble";
  # inputs."dotenv".ref = "flake-pinning";
  # inputs."dotenv".dir = "nimpkgs/d/dotenv";
  # inputs."dotenv".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."dotenv".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-norman-2_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norman-2_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-norman-2_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}