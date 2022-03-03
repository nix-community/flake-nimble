{
  description = ''USA Code.Gov MultiSync API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-usagov-master.flake = false;
  inputs.src-usagov-master.type = "github";
  inputs.src-usagov-master.owner = "juancarlospaco";
  inputs.src-usagov-master.repo = "nim-usagov";
  inputs.src-usagov-master.ref = "refs/heads/master";
  inputs.src-usagov-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-usagov-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-usagov-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-usagov-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}