{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-allographer-v0_20_0.flake = false;
  inputs.src-allographer-v0_20_0.type = "github";
  inputs.src-allographer-v0_20_0.owner = "itsumura-h";
  inputs.src-allographer-v0_20_0.repo = "nim-allographer";
  inputs.src-allographer-v0_20_0.ref = "refs/tags/v0.20.0";
  inputs.src-allographer-v0_20_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."dotenv".type = "github";
  # inputs."dotenv".owner = "riinr";
  # inputs."dotenv".repo = "flake-nimble";
  # inputs."dotenv".ref = "flake-pinning";
  # inputs."dotenv".dir = "nimpkgs/d/dotenv";
  # inputs."dotenv".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."dotenv".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-allographer-v0_20_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allographer-v0_20_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-allographer-v0_20_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}