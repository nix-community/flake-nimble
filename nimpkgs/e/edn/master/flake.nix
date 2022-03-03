{
  description = ''EDN and Clojure parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-edn-master.flake = false;
  inputs.src-edn-master.type = "github";
  inputs.src-edn-master.owner = "rosado";
  inputs.src-edn-master.repo = "edn.nim";
  inputs.src-edn-master.ref = "refs/heads/master";
  inputs.src-edn-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-edn-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-edn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-edn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}