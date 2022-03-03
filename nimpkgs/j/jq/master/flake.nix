{
  description = ''Fast JSON parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jq-master.flake = false;
  inputs.src-jq-master.type = "github";
  inputs.src-jq-master.owner = "alialrahahleh";
  inputs.src-jq-master.repo = "fjq";
  inputs.src-jq-master.ref = "refs/heads/master";
  inputs.src-jq-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jq-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jq-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jq-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}