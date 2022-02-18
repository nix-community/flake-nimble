{
  description = ''Transformer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-retranslator-master.flake = false;
  inputs.src-retranslator-master.type = "github";
  inputs.src-retranslator-master.owner = "linksplatform";
  inputs.src-retranslator-master.repo = "RegularExpressions.Transformer";
  inputs.src-retranslator-master.ref = "refs/heads/master";
  
  
  inputs."nre".type = "github";
  inputs."nre".owner = "riinr";
  inputs."nre".repo = "flake-nimble";
  inputs."nre".ref = "flake-pinning";
  inputs."nre".dir = "nimpkgs/n/nre";

  outputs = { self, nixpkgs, flakeNimbleLib, src-retranslator-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-retranslator-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-retranslator-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}