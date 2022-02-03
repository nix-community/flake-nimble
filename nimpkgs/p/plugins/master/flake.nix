{
  description = ''Plugin system for Nim'';
  inputs.src-plugins-master.flake = false;
  inputs.src-plugins-master.type = "github";
  inputs.src-plugins-master.owner = "genotrance";
  inputs.src-plugins-master.repo = "plugins";
  inputs.src-plugins-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-plugins-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plugins-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-plugins-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}