{
  description = ''Simple and compact fuzzing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimfuzz-master.flake = false;
  inputs.src-nimfuzz-master.type = "github";
  inputs.src-nimfuzz-master.owner = "apense";
  inputs.src-nimfuzz-master.repo = "nimfuzz";
  inputs.src-nimfuzz-master.ref = "refs/heads/master";
  inputs.src-nimfuzz-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfuzz-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfuzz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfuzz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}