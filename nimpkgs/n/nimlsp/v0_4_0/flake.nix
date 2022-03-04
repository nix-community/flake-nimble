{
  description = ''Language Server Protocol implementation for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimlsp-v0_4_0.flake = false;
  inputs.src-nimlsp-v0_4_0.type = "github";
  inputs.src-nimlsp-v0_4_0.owner = "PMunch";
  inputs.src-nimlsp-v0_4_0.repo = "nimlsp";
  inputs.src-nimlsp-v0_4_0.ref = "refs/tags/v0.4.0";
  inputs.src-nimlsp-v0_4_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."jsonschema".type = "github";
  inputs."jsonschema".owner = "riinr";
  inputs."jsonschema".repo = "flake-nimble";
  inputs."jsonschema".ref = "flake-pinning";
  inputs."jsonschema".dir = "nimpkgs/j/jsonschema";
  inputs."jsonschema".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsonschema".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimlsp-v0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlsp-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimlsp-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}