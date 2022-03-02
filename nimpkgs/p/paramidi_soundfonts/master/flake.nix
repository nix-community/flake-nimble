{
  description = ''Soundfonts for paramidi'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-paramidi_soundfonts-master.flake = false;
  inputs.src-paramidi_soundfonts-master.type = "github";
  inputs.src-paramidi_soundfonts-master.owner = "paranim";
  inputs.src-paramidi_soundfonts-master.repo = "paramidi_soundfonts";
  inputs.src-paramidi_soundfonts-master.ref = "refs/heads/master";
  inputs.src-paramidi_soundfonts-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-paramidi_soundfonts-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paramidi_soundfonts-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-paramidi_soundfonts-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}