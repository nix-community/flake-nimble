{
  description = ''Wrapper for DigitalOcean HTTP API.'';
  inputs.src-digitalocean-master.flake = false;
  inputs.src-digitalocean-master.type = "github";
  inputs.src-digitalocean-master.owner = "treeform";
  inputs.src-digitalocean-master.repo = "digitalocean";
  inputs.src-digitalocean-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-digitalocean-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-digitalocean-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-digitalocean-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}