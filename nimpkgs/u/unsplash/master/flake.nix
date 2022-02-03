{
  description = ''Unsplash API Client for Nim'';
  inputs.src-unsplash-master.flake = false;
  inputs.src-unsplash-master.type = "github";
  inputs.src-unsplash-master.owner = "juancarlospaco";
  inputs.src-unsplash-master.repo = "nim-unsplash";
  inputs.src-unsplash-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-unsplash-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unsplash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unsplash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}