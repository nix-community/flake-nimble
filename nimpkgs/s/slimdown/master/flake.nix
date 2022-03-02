{
  description = ''Nim module that converts Markdown text to HTML using only regular expressions. Based on jbroadway's Slimdown.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-slimdown-master.flake = false;
  inputs.src-slimdown-master.type = "github";
  inputs.src-slimdown-master.owner = "ruivieira";
  inputs.src-slimdown-master.repo = "nim-slimdown";
  inputs.src-slimdown-master.ref = "refs/heads/master";
  inputs.src-slimdown-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-slimdown-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slimdown-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-slimdown-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}