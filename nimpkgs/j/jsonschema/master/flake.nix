{
  description = ''JSON schema validation and creation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jsonschema-master.flake = false;
  inputs.src-jsonschema-master.type = "github";
  inputs.src-jsonschema-master.owner = "PMunch";
  inputs.src-jsonschema-master.repo = "jsonschema";
  inputs.src-jsonschema-master.ref = "refs/heads/master";
  inputs.src-jsonschema-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."ast_pattern_matching".type = "github";
  # inputs."ast_pattern_matching".owner = "riinr";
  # inputs."ast_pattern_matching".repo = "flake-nimble";
  # inputs."ast_pattern_matching".ref = "flake-pinning";
  # inputs."ast_pattern_matching".dir = "nimpkgs/a/ast_pattern_matching";
  # inputs."ast_pattern_matching".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ast_pattern_matching".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jsonschema-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsonschema-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jsonschema-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}