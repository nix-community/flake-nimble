{
  description = ''Google API for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-googleapi-0_1_4.flake = false;
  inputs.src-googleapi-0_1_4.type = "github";
  inputs.src-googleapi-0_1_4.owner = "treeform";
  inputs.src-googleapi-0_1_4.repo = "googleapi";
  inputs.src-googleapi-0_1_4.ref = "refs/tags/0.1.4";
  inputs.src-googleapi-0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jwt".type = "github";
  # inputs."jwt".owner = "riinr";
  # inputs."jwt".repo = "flake-nimble";
  # inputs."jwt".ref = "flake-pinning";
  # inputs."jwt".dir = "nimpkgs/j/jwt";
  # inputs."jwt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jwt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-googleapi-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-googleapi-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-googleapi-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}