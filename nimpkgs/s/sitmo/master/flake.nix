{
  description = ''Sitmo parallel random number generator in Nim'';
  inputs.src-sitmo-master.flake = false;
  inputs.src-sitmo-master.type = "github";
  inputs.src-sitmo-master.owner = "jxy";
  inputs.src-sitmo-master.repo = "sitmo";
  inputs.src-sitmo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sitmo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sitmo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sitmo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}