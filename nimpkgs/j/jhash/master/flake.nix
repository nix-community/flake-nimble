{
  description = ''Jenkins Hasher producing 32 bit digests'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jhash-master.flake = false;
  inputs.src-jhash-master.type = "github";
  inputs.src-jhash-master.owner = "mjfh";
  inputs.src-jhash-master.repo = "nim-jhash";
  inputs.src-jhash-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jhash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jhash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jhash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}