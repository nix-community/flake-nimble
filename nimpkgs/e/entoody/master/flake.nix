{
  description = ''A component/entity system'';
  inputs.src-entoody-master.flake = false;
  inputs.src-entoody-master.type = "bitbucket";
  inputs.src-entoody-master.owner = "fowlmouth";
  inputs.src-entoody-master.repo = "entoody";
  inputs.src-entoody-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-entoody-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-entoody-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-entoody-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}