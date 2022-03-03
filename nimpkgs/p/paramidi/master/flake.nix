{
  description = ''A library for making MIDI music'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-paramidi-master.flake = false;
  inputs.src-paramidi-master.type = "github";
  inputs.src-paramidi-master.owner = "paranim";
  inputs.src-paramidi-master.repo = "paramidi";
  inputs.src-paramidi-master.ref = "refs/heads/master";
  inputs.src-paramidi-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-paramidi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paramidi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-paramidi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}