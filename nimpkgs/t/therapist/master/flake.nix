{
  description = ''Type-safe commandline parsing with minimal magic'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-therapist-master.flake = false;
  inputs.src-therapist-master.type = "bitbucket";
  inputs.src-therapist-master.owner = "maxgrenderjones";
  inputs.src-therapist-master.repo = "therapist";
  inputs.src-therapist-master.ref = "refs/heads/master";
  inputs.src-therapist-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-therapist-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-therapist-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-therapist-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}