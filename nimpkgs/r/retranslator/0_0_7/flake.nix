{
  description = ''Transformer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-retranslator-0_0_7.flake = false;
  inputs.src-retranslator-0_0_7.type = "github";
  inputs.src-retranslator-0_0_7.owner = "linksplatform";
  inputs.src-retranslator-0_0_7.repo = "RegularExpressions.Transformer";
  inputs.src-retranslator-0_0_7.ref = "refs/tags/0.0.7";
  
  
  inputs."nre".type = "github";
  inputs."nre".owner = "riinr";
  inputs."nre".repo = "flake-nimble";
  inputs."nre".ref = "flake-pinning";
  inputs."nre".dir = "nimpkgs/n/nre";

  outputs = { self, nixpkgs, flakeNimbleLib, src-retranslator-0_0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-retranslator-0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-retranslator-0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}