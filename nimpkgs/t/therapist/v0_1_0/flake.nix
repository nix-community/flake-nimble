{
  description = ''Type-safe commandline parsing with minimal magic'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-therapist-v0_1_0.flake = false;
  inputs.src-therapist-v0_1_0.type = "bitbucket";
  inputs.src-therapist-v0_1_0.owner = "maxgrenderjones";
  inputs.src-therapist-v0_1_0.repo = "therapist";
  inputs.src-therapist-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-therapist-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-therapist-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-therapist-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-therapist-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}