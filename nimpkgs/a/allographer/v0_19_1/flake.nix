{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-allographer-v0_19_1.flake = false;
  inputs.src-allographer-v0_19_1.type = "github";
  inputs.src-allographer-v0_19_1.owner = "itsumura-h";
  inputs.src-allographer-v0_19_1.repo = "nim-allographer";
  inputs.src-allographer-v0_19_1.ref = "refs/tags/v0.19.1";
  
  
  inputs."dotenv".type = "github";
  inputs."dotenv".owner = "riinr";
  inputs."dotenv".repo = "flake-nimble";
  inputs."dotenv".ref = "flake-pinning";
  inputs."dotenv".dir = "nimpkgs/d/dotenv";

  outputs = { self, nixpkgs, flakeNimbleLib, src-allographer-v0_19_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allographer-v0_19_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-allographer-v0_19_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}