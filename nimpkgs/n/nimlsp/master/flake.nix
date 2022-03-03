{
  description = ''Language Server Protocol implementation for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimlsp-master.flake = false;
  inputs.src-nimlsp-master.type = "github";
  inputs.src-nimlsp-master.owner = "PMunch";
  inputs.src-nimlsp-master.repo = "nimlsp";
  inputs.src-nimlsp-master.ref = "refs/heads/master";
  inputs.src-nimlsp-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jsonschema".type = "github";
  # inputs."jsonschema".owner = "riinr";
  # inputs."jsonschema".repo = "flake-nimble";
  # inputs."jsonschema".ref = "flake-pinning";
  # inputs."jsonschema".dir = "nimpkgs/j/jsonschema";
  # inputs."jsonschema".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsonschema".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimlsp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlsp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimlsp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}