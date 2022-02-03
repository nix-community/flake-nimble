{
  description = ''Type-safe commandline parsing with minimal magic'';
  inputs.src-therapist-v0_1_0.flake = false;
  inputs.src-therapist-v0_1_0.type = "bitbucket";
  inputs.src-therapist-v0_1_0.owner = "maxgrenderjones";
  inputs.src-therapist-v0_1_0.repo = "therapist";
  inputs.src-therapist-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-therapist-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-therapist-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-therapist-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}