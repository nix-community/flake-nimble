{
  description = ''itch.io API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-itchio-master.flake = false;
  inputs.src-itchio-master.type = "github";
  inputs.src-itchio-master.owner = "juancarlospaco";
  inputs.src-itchio-master.repo = "nim-itchio";
  inputs.src-itchio-master.ref = "refs/heads/master";
  inputs.src-itchio-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-itchio-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-itchio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-itchio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}