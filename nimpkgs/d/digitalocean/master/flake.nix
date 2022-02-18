{
  description = ''Wrapper for DigitalOcean HTTP API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-digitalocean-master.flake = false;
  inputs.src-digitalocean-master.type = "github";
  inputs.src-digitalocean-master.owner = "treeform";
  inputs.src-digitalocean-master.repo = "digitalocean";
  inputs.src-digitalocean-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-digitalocean-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-digitalocean-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-digitalocean-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}