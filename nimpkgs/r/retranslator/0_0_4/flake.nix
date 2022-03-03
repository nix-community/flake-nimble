{
  description = ''Transformer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-retranslator-0_0_4.flake = false;
  inputs.src-retranslator-0_0_4.type = "github";
  inputs.src-retranslator-0_0_4.owner = "linksplatform";
  inputs.src-retranslator-0_0_4.repo = "RegularExpressions.Transformer";
  inputs.src-retranslator-0_0_4.ref = "refs/tags/0.0.4";
  inputs.src-retranslator-0_0_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-retranslator-0_0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-retranslator-0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-retranslator-0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}