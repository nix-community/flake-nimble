{
  description = ''Go-like interfaces'';
  inputs.src-interfaced-master.flake = false;
  inputs.src-interfaced-master.type = "github";
  inputs.src-interfaced-master.owner = "andreaferretti";
  inputs.src-interfaced-master.repo = "interfaced";
  inputs.src-interfaced-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-interfaced-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-interfaced-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-interfaced-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}