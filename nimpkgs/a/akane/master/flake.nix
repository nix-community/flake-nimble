{
  description = ''The Nim asynchronous web framework.'';
  inputs.src-akane-master.flake = false;
  inputs.src-akane-master.type = "github";
  inputs.src-akane-master.owner = "ethosa";
  inputs.src-akane-master.repo = "akane";
  inputs.src-akane-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-akane-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-akane-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-akane-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}