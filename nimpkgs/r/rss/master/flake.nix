{
  description = ''RSS library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rss-master.flake = false;
  inputs.src-rss-master.type = "github";
  inputs.src-rss-master.owner = "achesak";
  inputs.src-rss-master.repo = "nim-rss";
  inputs.src-rss-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rss-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rss-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rss-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}