{
  description = ''wave is a tiny WAV sound module'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-wave-master.flake = false;
  inputs.src-wave-master.type = "github";
  inputs.src-wave-master.owner = "jiro4989";
  inputs.src-wave-master.repo = "wave";
  inputs.src-wave-master.ref = "refs/heads/master";
  inputs.src-wave-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-wave-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wave-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wave-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}