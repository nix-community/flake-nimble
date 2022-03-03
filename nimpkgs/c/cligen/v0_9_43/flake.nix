{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cligen-v0_9_43.flake = false;
  inputs.src-cligen-v0_9_43.type = "github";
  inputs.src-cligen-v0_9_43.owner = "c-blake";
  inputs.src-cligen-v0_9_43.repo = "cligen";
  inputs.src-cligen-v0_9_43.ref = "refs/tags/v0.9.43";
  inputs.src-cligen-v0_9_43.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v0_9_43, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_43;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v0_9_43"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}