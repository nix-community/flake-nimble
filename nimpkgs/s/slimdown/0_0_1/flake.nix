{
  description = ''Nim module that converts Markdown text to HTML using only regular expressions. Based on jbroadway's Slimdown.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-slimdown-0_0_1.flake = false;
  inputs.src-slimdown-0_0_1.type = "github";
  inputs.src-slimdown-0_0_1.owner = "ruivieira";
  inputs.src-slimdown-0_0_1.repo = "nim-slimdown";
  inputs.src-slimdown-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-slimdown-0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slimdown-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-slimdown-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}