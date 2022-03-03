{
  description = ''Fast and just works JSON-Binding for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sam-0_1_6.flake = false;
  inputs.src-sam-0_1_6.type = "github";
  inputs.src-sam-0_1_6.owner = "OpenSystemsLab";
  inputs.src-sam-0_1_6.repo = "sam.nim";
  inputs.src-sam-0_1_6.ref = "refs/tags/0.1.6";
  inputs.src-sam-0_1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jsmn".type = "github";
  # inputs."jsmn".owner = "riinr";
  # inputs."jsmn".repo = "flake-nimble";
  # inputs."jsmn".ref = "flake-pinning";
  # inputs."jsmn".dir = "nimpkgs/j/jsmn";
  # inputs."jsmn".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsmn".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sam-0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sam-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sam-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}