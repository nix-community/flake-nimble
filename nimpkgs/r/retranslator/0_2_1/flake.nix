{
  description = ''Transformer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-retranslator-0_2_1.flake = false;
  inputs.src-retranslator-0_2_1.type = "github";
  inputs.src-retranslator-0_2_1.owner = "linksplatform";
  inputs.src-retranslator-0_2_1.repo = "RegularExpressions.Transformer";
  inputs.src-retranslator-0_2_1.ref = "refs/tags/0.2.1";
  inputs.src-retranslator-0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nre".type = "github";
  # inputs."nre".owner = "riinr";
  # inputs."nre".repo = "flake-nimble";
  # inputs."nre".ref = "flake-pinning";
  # inputs."nre".dir = "nimpkgs/n/nre";
  # inputs."nre".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nre".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-retranslator-0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-retranslator-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-retranslator-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}