{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cligen-v0_9_26.flake = false;
  inputs.src-cligen-v0_9_26.type = "github";
  inputs.src-cligen-v0_9_26.owner = "c-blake";
  inputs.src-cligen-v0_9_26.repo = "cligen";
  inputs.src-cligen-v0_9_26.ref = "refs/tags/v0.9.26";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v0_9_26, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_26;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v0_9_26"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}