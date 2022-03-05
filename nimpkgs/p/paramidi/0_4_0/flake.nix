{
  description = ''A library for making MIDI music'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-paramidi-0_4_0.flake = false;
  inputs.src-paramidi-0_4_0.type = "github";
  inputs.src-paramidi-0_4_0.owner = "paranim";
  inputs.src-paramidi-0_4_0.repo = "paramidi";
  inputs.src-paramidi-0_4_0.ref = "refs/tags/0.4.0";
  inputs.src-paramidi-0_4_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-paramidi-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paramidi-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-paramidi-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}