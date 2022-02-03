{
  description = ''A web framework inspired by ExpressJS 🐇⚡'';
  inputs.src-phoon-master.flake = false;
  inputs.src-phoon-master.type = "github";
  inputs.src-phoon-master.owner = "ducdetronquito";
  inputs.src-phoon-master.repo = "phoon";
  inputs.src-phoon-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-phoon-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-phoon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-phoon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}