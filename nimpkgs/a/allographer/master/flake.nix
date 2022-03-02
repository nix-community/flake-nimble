{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-allographer-master.flake = false;
  inputs.src-allographer-master.type = "github";
  inputs.src-allographer-master.owner = "itsumura-h";
  inputs.src-allographer-master.repo = "nim-allographer";
  inputs.src-allographer-master.ref = "refs/heads/master";
  inputs.src-allographer-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."dotenv".type = "github";
  # inputs."dotenv".owner = "riinr";
  # inputs."dotenv".repo = "flake-nimble";
  # inputs."dotenv".ref = "flake-pinning";
  # inputs."dotenv".dir = "nimpkgs/d/dotenv";
  # inputs."dotenv".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."dotenv".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-allographer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allographer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-allographer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}