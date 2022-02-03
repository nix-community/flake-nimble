{
  description = ''Utils to work with javascript'';
  inputs.src-jsutils-master.flake = false;
  inputs.src-jsutils-master.type = "github";
  inputs.src-jsutils-master.owner = "kidandcat";
  inputs.src-jsutils-master.repo = "jsutils";
  inputs.src-jsutils-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jsutils-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}