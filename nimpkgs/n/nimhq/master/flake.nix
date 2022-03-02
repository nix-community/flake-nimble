{
  description = ''HQ Trivia API wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimhq-master.flake = false;
  inputs.src-nimhq-master.type = "github";
  inputs.src-nimhq-master.owner = "sillibird";
  inputs.src-nimhq-master.repo = "nimhq";
  inputs.src-nimhq-master.ref = "refs/heads/master";
  inputs.src-nimhq-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimhq-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhq-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimhq-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}