{
  description = ''Type-safe commandline parsing with minimal magic'';
  inputs.src-therapist-master.flake = false;
  inputs.src-therapist-master.type = "bitbucket";
  inputs.src-therapist-master.owner = "maxgrenderjones";
  inputs.src-therapist-master.repo = "therapist";
  inputs.src-therapist-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-therapist-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-therapist-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-therapist-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}