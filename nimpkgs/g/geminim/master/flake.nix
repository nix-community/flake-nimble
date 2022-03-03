{
  description = ''Simple async Gemini server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-geminim-master.flake = false;
  inputs.src-geminim-master.type = "github";
  inputs.src-geminim-master.owner = "IDF31";
  inputs.src-geminim-master.repo = "geminim";
  inputs.src-geminim-master.ref = "refs/heads/master";
  inputs.src-geminim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-geminim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geminim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-geminim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}