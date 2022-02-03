{
  description = ''Nim wrapper for the GitHub API'';
  inputs.src-github_api-master.flake = false;
  inputs.src-github_api-master.type = "github";
  inputs.src-github_api-master.owner = "watzon";
  inputs.src-github_api-master.repo = "github-api-nim";
  inputs.src-github_api-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-github_api-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-github_api-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-github_api-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}