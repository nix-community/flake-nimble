{
  description = ''Web Technologies based Crossplatform GUI Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-crowngui-v0_2_8.flake = false;
  inputs.src-crowngui-v0_2_8.type = "github";
  inputs.src-crowngui-v0_2_8.owner = "bung87";
  inputs.src-crowngui-v0_2_8.repo = "crowngui";
  inputs.src-crowngui-v0_2_8.ref = "refs/tags/v0.2.8";
  inputs.src-crowngui-v0_2_8.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."xlsx".type = "github";
  inputs."xlsx".owner = "riinr";
  inputs."xlsx".repo = "flake-nimble";
  inputs."xlsx".ref = "flake-pinning";
  inputs."xlsx".dir = "nimpkgs/x/xlsx";
  inputs."xlsx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."static_server".type = "github";
  inputs."static_server".owner = "riinr";
  inputs."static_server".repo = "flake-nimble";
  inputs."static_server".ref = "flake-pinning";
  inputs."static_server".dir = "nimpkgs/s/static_server";
  inputs."static_server".inputs.nixpkgs.follows = "nixpkgs";
  inputs."static_server".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."jsonschema".type = "github";
  inputs."jsonschema".owner = "riinr";
  inputs."jsonschema".repo = "flake-nimble";
  inputs."jsonschema".ref = "flake-pinning";
  inputs."jsonschema".dir = "nimpkgs/j/jsonschema";
  inputs."jsonschema".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsonschema".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/bung87/objc_runtime".type = "github";
  inputs."https://github.com/bung87/objc_runtime".owner = "riinr";
  inputs."https://github.com/bung87/objc_runtime".repo = "flake-nimble";
  inputs."https://github.com/bung87/objc_runtime".ref = "flake-pinning";
  inputs."https://github.com/bung87/objc_runtime".dir = "nimpkgs/h/https://github.com/bung87/objc_runtime";
  inputs."https://github.com/bung87/objc_runtime".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/bung87/objc_runtime".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."darwin".type = "github";
  inputs."darwin".owner = "riinr";
  inputs."darwin".repo = "flake-nimble";
  inputs."darwin".ref = "flake-pinning";
  inputs."darwin".dir = "nimpkgs/d/darwin";
  inputs."darwin".inputs.nixpkgs.follows = "nixpkgs";
  inputs."darwin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-crowngui-v0_2_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crowngui-v0_2_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-crowngui-v0_2_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}