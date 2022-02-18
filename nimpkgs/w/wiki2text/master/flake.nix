{
  description = ''Quickly extracts natural-language text from a MediaWiki XML file.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-wiki2text-master.flake = false;
  inputs.src-wiki2text-master.type = "github";
  inputs.src-wiki2text-master.owner = "rspeer";
  inputs.src-wiki2text-master.repo = "wiki2text";
  inputs.src-wiki2text-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-wiki2text-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wiki2text-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wiki2text-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}