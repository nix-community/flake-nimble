{
  description = ''Nim Espeak NG wrapper, for super easy Voice and Text-To-Speech'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-espeak-master.flake = false;
  inputs.src-espeak-master.type = "github";
  inputs.src-espeak-master.owner = "juancarlospaco";
  inputs.src-espeak-master.repo = "nim-espeak";
  inputs.src-espeak-master.ref = "refs/heads/master";
  inputs.src-espeak-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-espeak-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-espeak-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-espeak-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}