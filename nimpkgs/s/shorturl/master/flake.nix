{
  description = ''Nim module for generating URL identifiers for Tiny URL and bit.ly-like URLs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-shorturl-master.flake = false;
  inputs.src-shorturl-master.type = "github";
  inputs.src-shorturl-master.owner = "achesak";
  inputs.src-shorturl-master.repo = "nim-shorturl";
  inputs.src-shorturl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shorturl-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shorturl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shorturl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}