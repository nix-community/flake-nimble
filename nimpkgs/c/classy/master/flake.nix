{
  description = ''typeclasses for Nim'';
  inputs.src-classy-master.flake = false;
  inputs.src-classy-master.type = "github";
  inputs.src-classy-master.owner = "nigredo-tori";
  inputs.src-classy-master.repo = "classy";
  inputs.src-classy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-classy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}