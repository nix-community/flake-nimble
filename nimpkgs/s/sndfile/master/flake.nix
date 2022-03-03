{
  description = ''A wrapper of libsndfile'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sndfile-master.flake = false;
  inputs.src-sndfile-master.type = "github";
  inputs.src-sndfile-master.owner = "julienaubert";
  inputs.src-sndfile-master.repo = "nim-sndfile";
  inputs.src-sndfile-master.ref = "refs/heads/master";
  inputs.src-sndfile-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sndfile-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sndfile-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sndfile-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}