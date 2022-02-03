{
  description = ''Convert strings to any case'';
  inputs.src-anycase-master.flake = false;
  inputs.src-anycase-master.type = "github";
  inputs.src-anycase-master.owner = "lamartire";
  inputs.src-anycase-master.repo = "anycase";
  inputs.src-anycase-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-anycase-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anycase-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-anycase-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}