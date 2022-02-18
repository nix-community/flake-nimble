{
  description = ''Quickly extracts natural-language text from a MediaWiki XML file.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-wiki2text-v0_1.flake = false;
  inputs.src-wiki2text-v0_1.type = "github";
  inputs.src-wiki2text-v0_1.owner = "rspeer";
  inputs.src-wiki2text-v0_1.repo = "wiki2text";
  inputs.src-wiki2text-v0_1.ref = "refs/tags/v0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-wiki2text-v0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wiki2text-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wiki2text-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}