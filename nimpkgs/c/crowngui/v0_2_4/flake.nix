{
  description = ''Web Technologies based Crossplatform GUI Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-crowngui-v0_2_4.flake = false;
  inputs.src-crowngui-v0_2_4.type = "github";
  inputs.src-crowngui-v0_2_4.owner = "bung87";
  inputs.src-crowngui-v0_2_4.repo = "crowngui";
  inputs.src-crowngui-v0_2_4.ref = "refs/tags/v0.2.4";
  inputs.src-crowngui-v0_2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimble".type = "github";
  # inputs."nimble".owner = "riinr";
  # inputs."nimble".repo = "flake-nimble";
  # inputs."nimble".ref = "flake-pinning";
  # inputs."nimble".dir = "nimpkgs/n/nimble";
  # inputs."nimble".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimble".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."plists".type = "github";
  # inputs."plists".owner = "riinr";
  # inputs."plists".repo = "flake-nimble";
  # inputs."plists".ref = "flake-pinning";
  # inputs."plists".dir = "nimpkgs/p/plists";
  # inputs."plists".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."plists".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."imageman".type = "github";
  # inputs."imageman".owner = "riinr";
  # inputs."imageman".repo = "flake-nimble";
  # inputs."imageman".ref = "flake-pinning";
  # inputs."imageman".dir = "nimpkgs/i/imageman";
  # inputs."imageman".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."imageman".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."zopflipng".type = "github";
  # inputs."zopflipng".owner = "riinr";
  # inputs."zopflipng".repo = "flake-nimble";
  # inputs."zopflipng".ref = "flake-pinning";
  # inputs."zopflipng".dir = "nimpkgs/z/zopflipng";
  # inputs."zopflipng".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zopflipng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."rcedit".type = "github";
  # inputs."rcedit".owner = "riinr";
  # inputs."rcedit".repo = "flake-nimble";
  # inputs."rcedit".ref = "flake-pinning";
  # inputs."rcedit".dir = "nimpkgs/r/rcedit";
  # inputs."rcedit".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."rcedit".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/bung87/static_server".type = "github";
  # inputs."https://github.com/bung87/static_server".owner = "riinr";
  # inputs."https://github.com/bung87/static_server".repo = "flake-nimble";
  # inputs."https://github.com/bung87/static_server".ref = "flake-pinning";
  # inputs."https://github.com/bung87/static_server".dir = "nimpkgs/h/https://github.com/bung87/static_server";
  # inputs."https://github.com/bung87/static_server".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/bung87/static_server".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/bung87/icon".type = "github";
  # inputs."https://github.com/bung87/icon".owner = "riinr";
  # inputs."https://github.com/bung87/icon".repo = "flake-nimble";
  # inputs."https://github.com/bung87/icon".ref = "flake-pinning";
  # inputs."https://github.com/bung87/icon".dir = "nimpkgs/h/https://github.com/bung87/icon";
  # inputs."https://github.com/bung87/icon".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/bung87/icon".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."jsonschema".type = "github";
  # inputs."jsonschema".owner = "riinr";
  # inputs."jsonschema".repo = "flake-nimble";
  # inputs."jsonschema".ref = "flake-pinning";
  # inputs."jsonschema".dir = "nimpkgs/j/jsonschema";
  # inputs."jsonschema".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsonschema".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-crowngui-v0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crowngui-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-crowngui-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}