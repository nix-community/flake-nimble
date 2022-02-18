{
  description = ''Grapheme aware string handling (Unicode tr29)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-graphemes-master.flake = false;
  inputs.src-graphemes-master.type = "github";
  inputs.src-graphemes-master.owner = "nitely";
  inputs.src-graphemes-master.repo = "nim-graphemes";
  inputs.src-graphemes-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-graphemes-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphemes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-graphemes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}