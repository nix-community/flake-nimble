{
  description = ''Nim wrapper for the GitHub API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-github_api-master.flake = false;
  inputs.src-github_api-master.type = "github";
  inputs.src-github_api-master.owner = "watzon";
  inputs.src-github_api-master.repo = "github-api-nim";
  inputs.src-github_api-master.ref = "refs/heads/master";
  inputs.src-github_api-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-github_api-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-github_api-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-github_api-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}