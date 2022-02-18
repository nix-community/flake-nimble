{
  description = ''The Nim framework for VK API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-shizuka-master.flake = false;
  inputs.src-shizuka-master.type = "github";
  inputs.src-shizuka-master.owner = "ethosa";
  inputs.src-shizuka-master.repo = "shizuka";
  inputs.src-shizuka-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shizuka-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shizuka-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shizuka-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}