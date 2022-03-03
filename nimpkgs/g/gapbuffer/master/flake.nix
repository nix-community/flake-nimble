{
  description = ''A simple gap buffer implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gapbuffer-master.flake = false;
  inputs.src-gapbuffer-master.type = "other";
  inputs.src-gapbuffer-master.owner = "vktec";
  inputs.src-gapbuffer-master.repo = "nim-gapbuffer";
  inputs.src-gapbuffer-master.ref = "refs/heads/master";
  inputs.src-gapbuffer-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gapbuffer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gapbuffer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gapbuffer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}