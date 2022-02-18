{
  description = ''Converts a file with Jester routes to Swagger JSON which can be imported in Postman.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jester2swagger-main.flake = false;
  inputs.src-jester2swagger-main.type = "github";
  inputs.src-jester2swagger-main.owner = "ThomasTJdev";
  inputs.src-jester2swagger-main.repo = "jester2swagger";
  inputs.src-jester2swagger-main.ref = "refs/heads/main";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jester2swagger-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jester2swagger-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jester2swagger-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}