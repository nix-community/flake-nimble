{
  description = ''A natural language library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-tome-main.flake = false;
  inputs.src-tome-main.type = "github";
  inputs.src-tome-main.owner = "dizzyliam";
  inputs.src-tome-main.repo = "tome";
  inputs.src-tome-main.ref = "refs/heads/main";
  inputs.src-tome-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zip".type = "github";
  # inputs."zip".owner = "riinr";
  # inputs."zip".repo = "flake-nimble";
  # inputs."zip".ref = "flake-pinning";
  # inputs."zip".dir = "nimpkgs/z/zip";
  # inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."untar".type = "github";
  # inputs."untar".owner = "riinr";
  # inputs."untar".repo = "flake-nimble";
  # inputs."untar".ref = "flake-pinning";
  # inputs."untar".dir = "nimpkgs/u/untar";
  # inputs."untar".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."untar".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-tome-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tome-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tome-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}