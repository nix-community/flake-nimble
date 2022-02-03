{
  description = ''Convert json node to camelcase'';
  inputs.src-camelize-master.flake = false;
  inputs.src-camelize-master.type = "github";
  inputs.src-camelize-master.owner = "kixixixixi";
  inputs.src-camelize-master.repo = "camelize";
  inputs.src-camelize-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-camelize-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-camelize-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-camelize-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}